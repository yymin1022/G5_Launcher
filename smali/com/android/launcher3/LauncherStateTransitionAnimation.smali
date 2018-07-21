.class public Lcom/android/launcher3/LauncherStateTransitionAnimation;
.super Ljava/lang/Object;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;,
        Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
    }
.end annotation


# static fields
.field public static final BUILD_AND_SET_LAYER:I = 0x1

.field public static final BUILD_LAYER:I = 0x0

.field public static final SINGLE_FRAME_DELAY:I = 0x10

.field public static final TAG:Ljava/lang/String; = "LauncherStateTransitionAnimation"


# instance fields
.field mCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;

.field mLauncher:Lcom/android/launcher3/Launcher;

.field mStateAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;)V
    .registers 3

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 120
    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;

    .line 121
    return-void
.end method

.method private cancelAnimation()V
    .registers 5

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_13

    .line 761
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 762
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 765
    :cond_13
    return-void
.end method

.method private startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .registers 30
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 219
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v11

    .line 220
    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 222
    const v5, 0x7f0c000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v12

    .line 226
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 229
    if-eqz p2, :cond_267

    const/4 v4, 0x1

    move v10, v4

    .line 232
    :goto_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, -0x1

    .line 237
    if-eqz p6, :cond_26b

    const/4 v8, 0x1

    :goto_36
    move-object/from16 v5, p1

    move/from16 v7, p7

    .line 236
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Launcher;->startWorkspaceStateChangeAnimation(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v7

    .line 239
    if-eqz p7, :cond_277

    if-eqz v10, :cond_277

    .line 240
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 243
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 244
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 245
    div-int/lit8 v4, v8, 0x2

    int-to-double v4, v4

    div-int/lit8 v6, v10, 0x2

    int-to-double v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v15, v4

    .line 246
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 248
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 249
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 255
    if-eqz v11, :cond_26e

    .line 257
    const/4 v4, 0x0

    .line 256
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;[I)[I

    move-result-object v5

    .line 258
    move-object/from16 v0, p9

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewFinalAlpha(Landroid/view/View;)F

    move-result v6

    .line 259
    const/4 v4, 0x1

    aget v4, v5, v4

    int-to-float v4, v4

    .line 260
    const/16 v16, 0x0

    aget v5, v5, v16

    int-to-float v5, v5

    .line 269
    :goto_95
    const-string v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v6, v17, v18

    const/4 v6, 0x1

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v17, v6

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 271
    const-string v16, "translationY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v4, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 273
    const-string v17, "translationX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v5, v18, v19

    const/4 v5, 0x1

    const/16 v19, 0x0

    aput v19, v18, v5

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 274
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 275
    aput-object v6, v17, v18

    const/4 v6, 0x1

    aput-object v16, v17, v6

    const/4 v6, 0x2

    aput-object v5, v17, v6

    .line 274
    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 276
    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 277
    new-instance v6, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v16, 0x64

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v9, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 283
    if-eqz p6, :cond_158

    .line 284
    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 285
    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2e4

    move-object/from16 v0, p6

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 286
    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v16, 0x3fc00000    # 1.5f

    move/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v9, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 293
    :cond_158
    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 295
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 296
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v5, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/16 v16, 0x0

    .line 300
    aput v4, v6, v16

    const/4 v4, 0x1

    const/16 v16, 0x0

    aput v16, v6, v4

    .line 299
    move-object/from16 v0, p4

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 301
    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    new-instance v5, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v6, 0x64

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    int-to-long v0, v14

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 304
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 306
    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2ec

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 307
    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    int-to-long v0, v14

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 312
    if-eqz v11, :cond_210

    .line 313
    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v4

    .line 314
    move-object/from16 v0, p9

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v5

    .line 316
    div-int/lit8 v6, v8, 0x2

    .line 317
    div-int/lit8 v8, v10, 0x2

    .line 316
    move-object/from16 v0, p5

    invoke-static {v0, v6, v8, v4, v15}, Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 318
    int-to-long v10, v13

    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 319
    new-instance v6, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v8, 0x64

    const/4 v10, 0x0

    invoke-direct {v6, v8, v10}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    if-eqz v5, :cond_209

    .line 321
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    :cond_209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 326
    :cond_210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;

    move-object/from16 v11, p0

    move/from16 v13, p7

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    move-object/from16 v16, v9

    move/from16 v17, p8

    move-object/from16 v18, p9

    invoke-direct/range {v10 .. v18}, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Landroid/view/View;Ljava/util/HashMap;ZLcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    if-eqz v7, :cond_233

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 359
    :cond_233
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 360
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 364
    new-instance v13, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;

    move-object/from16 v14, p0

    move-object/from16 v16, v12

    move/from16 v17, p7

    move-object/from16 v18, p3

    move-object/from16 v19, v9

    invoke-direct/range {v13 .. v19}, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;ZLandroid/view/View;Ljava/util/HashMap;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->bringToFront()V

    .line 391
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 416
    :goto_266
    return-void

    .line 229
    :cond_267
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_2b

    .line 237
    :cond_26b
    const/4 v8, 0x0

    goto/16 :goto_36

    .line 262
    :cond_26e
    const/4 v6, 0x0

    .line 263
    mul-int/lit8 v4, v10, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    .line 264
    const/4 v5, 0x0

    goto/16 :goto_95

    .line 394
    :cond_277
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 395
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 396
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 397
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 398
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->bringToFront()V

    .line 402
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 404
    if-eqz p8, :cond_2a9

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;

    invoke-interface {v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation$Callbacks;->onStateTransitionHideSearchBar()V

    .line 408
    :cond_2a9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 410
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 411
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 412
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 413
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 414
    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    goto :goto_266

    .line 285
    nop

    :array_2e4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 306
    :array_2ec
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimationToWorkspaceFromAllApps(Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V
    .registers 16

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v4

    .line 424
    new-instance v10, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;

    invoke-direct {v10, p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;)V

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAllAppsButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    .line 460
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getSearchBarView()Landroid/view/View;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v8, p3

    move-object v9, p4

    .line 458
    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 462
    return-void
.end method

.method private startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .registers 33

    .prologue
    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 500
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v12

    .line 501
    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 503
    const v5, 0x7f0c000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v14

    .line 507
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 510
    if-eqz p3, :cond_291

    const/4 v4, 0x1

    move v10, v4

    .line 513
    :goto_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 518
    if-eqz p7, :cond_295

    const/4 v8, 0x1

    :goto_35
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p8

    .line 517
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Launcher;->startWorkspaceStateChangeAnimation(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v4

    .line 521
    if-eqz p8, :cond_2c4

    if-eqz v10, :cond_2c4

    .line 522
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 525
    if-eqz v4, :cond_54

    .line 526
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 532
    :cond_54
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_25a

    .line 533
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 534
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 535
    div-int/lit8 v4, v7, 0x2

    int-to-double v4, v4

    div-int/lit8 v6, v8, 0x2

    int-to-double v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v10, v4

    .line 536
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 537
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 538
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 539
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    if-eqz v12, :cond_298

    .line 546
    const/4 v4, 0x0

    .line 545
    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;[I)[I

    move-result-object v5

    .line 547
    const/4 v4, 0x1

    aget v4, v5, v4

    int-to-float v4, v4

    .line 548
    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move v6, v4

    .line 557
    :goto_a2
    if-eqz v12, :cond_2a1

    .line 558
    new-instance v4, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v15, 0x64

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    .line 560
    :goto_af
    const-string v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 561
    const/16 v18, 0x0

    aput v18, v16, v17

    const/16 v17, 0x1

    aput v6, v16, v17

    .line 560
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 562
    add-int/lit8 v16, v11, -0x10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 563
    add-int/lit8 v16, v13, 0x10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 564
    invoke-virtual {v15, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 567
    const-string v15, "translationX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 568
    const/16 v18, 0x0

    aput v18, v16, v17

    const/16 v17, 0x1

    aput v5, v16, v17

    .line 567
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 569
    add-int/lit8 v15, v11, -0x10

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 570
    add-int/lit8 v15, v13, 0x10

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 571
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 575
    if-nez v12, :cond_2aa

    const/4 v5, 0x0

    .line 577
    :goto_12a
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_168

    .line 578
    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 579
    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    const/16 v17, 0x1

    aput v5, v16, v17

    .line 578
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 580
    if-eqz v12, :cond_2b4

    move v5, v11

    :goto_14f
    int-to-long v0, v5

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 581
    if-eqz v12, :cond_2b8

    const/4 v5, 0x0

    :goto_158
    int-to-long v0, v5

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 582
    invoke-virtual {v15, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 587
    :cond_168
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v5, "translationY"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    .line 591
    const/16 v17, 0x0

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v6, v15, v16

    .line 590
    move-object/from16 v0, p5

    invoke-static {v0, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 592
    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 593
    add-int/lit8 v6, v11, -0x10

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 594
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 595
    add-int/lit8 v6, v13, 0x10

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 596
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 598
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 599
    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_30a

    move-object/from16 v0, p5

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 600
    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 601
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 604
    if-eqz p7, :cond_20f

    .line 605
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 606
    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_312

    move-object/from16 v0, p7

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 607
    if-eqz v12, :cond_2bc

    const/16 v5, 0x64

    :goto_1ec
    int-to-long v0, v5

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 608
    invoke-virtual {v6, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    if-eqz v12, :cond_2c0

    const/4 v4, 0x0

    :goto_1fa
    int-to-long v4, v4

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 610
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 614
    :cond_20f
    if-eqz v12, :cond_248

    .line 616
    invoke-virtual/range {p10 .. p10}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v4

    .line 618
    move-object/from16 v0, p10

    move-object/from16 v1, p6

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v5

    .line 619
    div-int/lit8 v6, v7, 0x2

    .line 620
    div-int/lit8 v7, v8, 0x2

    .line 619
    move-object/from16 v0, p6

    invoke-static {v0, v6, v7, v10, v4}, Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 621
    new-instance v6, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 622
    int-to-long v6, v11

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 623
    int-to-long v6, v13

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 624
    if-eqz v5, :cond_241

    .line 625
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    :cond_241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 630
    :cond_248
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 631
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v14, v1, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 634
    :cond_25a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move/from16 v13, p8

    move-object/from16 v15, p9

    move-object/from16 v16, v9

    move-object/from16 v17, p5

    move-object/from16 v18, p7

    move-object/from16 v19, p10

    invoke-direct/range {v10 .. v19}, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;Ljava/util/HashMap;Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    .line 670
    new-instance v15, Lcom/android/launcher3/LauncherStateTransitionAnimation$8;

    move-object/from16 v16, p0

    move-object/from16 v18, p4

    move/from16 v19, p8

    move-object/from16 v20, v14

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v21}, Lcom/android/launcher3/LauncherStateTransitionAnimation$8;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;ZLandroid/view/View;Ljava/util/HashMap;)V

    .line 692
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 708
    :cond_290
    :goto_290
    return-void

    .line 510
    :cond_291
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_2b

    .line 518
    :cond_295
    const/4 v8, 0x0

    goto/16 :goto_35

    .line 550
    :cond_298
    mul-int/lit8 v4, v8, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    .line 551
    const/4 v5, 0x0

    move v6, v4

    goto/16 :goto_a2

    .line 559
    :cond_2a1
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v4, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_af

    .line 576
    :cond_2aa
    move-object/from16 v0, p10

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewFinalAlpha(Landroid/view/View;)F

    move-result v5

    goto/16 :goto_12a

    .line 580
    :cond_2b4
    const/16 v5, 0x96

    goto/16 :goto_14f

    .line 581
    :cond_2b8
    add-int/lit8 v5, v13, 0x10

    goto/16 :goto_158

    .line 607
    :cond_2bc
    const/16 v5, 0x96

    goto/16 :goto_1ec

    .line 609
    :cond_2c0
    add-int/lit8 v4, v13, 0x10

    goto/16 :goto_1fa

    .line 694
    :cond_2c4
    const/16 v4, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 695
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 696
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 697
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 698
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v14, v1, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 699
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v14, v1, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 700
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v14, v1, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 701
    invoke-virtual/range {p10 .. p10}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 704
    if-eqz p9, :cond_290

    .line 705
    invoke-interface/range {p9 .. p9}, Ljava/lang/Runnable;->run()V

    goto :goto_290

    .line 599
    :array_30a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 606
    :array_312
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startAnimationToWorkspaceFromWidgets(Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V
    .registers 16

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v4

    .line 470
    new-instance v10, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;

    invoke-direct {v10, p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;)V

    .line 487
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContentView()Landroid/view/View;

    move-result-object v5

    .line 488
    invoke-virtual {v4}, Lcom/android/launcher3/widget/WidgetsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v8, p3

    move-object v9, p4

    .line 486
    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 489
    return-void
.end method


# virtual methods
.method dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V
    .registers 6

    .prologue
    .line 747
    instance-of v0, p1, Lcom/android/launcher3/LauncherTransitionable;

    if-eqz v0, :cond_c

    move-object v0, p1

    .line 748
    check-cast v0, Lcom/android/launcher3/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/launcher3/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZ)V

    .line 753
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 754
    return-void
.end method

.method dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V
    .registers 5

    .prologue
    .line 715
    instance-of v0, p1, Lcom/android/launcher3/LauncherTransitionable;

    if-eqz v0, :cond_b

    .line 716
    check-cast p1, Lcom/android/launcher3/LauncherTransitionable;

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/launcher3/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZ)V

    .line 719
    :cond_b
    return-void
.end method

.method dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V
    .registers 6

    .prologue
    .line 725
    instance-of v0, p1, Lcom/android/launcher3/LauncherTransitionable;

    if-eqz v0, :cond_c

    move-object v0, p1

    .line 726
    check-cast v0, Lcom/android/launcher3/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/launcher3/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZ)V

    .line 731
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 732
    return-void
.end method

.method dispatchOnLauncherTransitionStep(Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 738
    instance-of v0, p1, Lcom/android/launcher3/LauncherTransitionable;

    if-eqz v0, :cond_b

    .line 739
    check-cast p1, Lcom/android/launcher3/LauncherTransitionable;

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2}, Lcom/android/launcher3/LauncherTransitionable;->onLauncherTransitionStep(Lcom/android/launcher3/Launcher;F)V

    .line 741
    :cond_b
    return-void
.end method

.method public startAnimationToAllApps(ZZ)V
    .registers 13

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v3

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAllAppsButton()Landroid/view/View;

    move-result-object v2

    .line 133
    new-instance v9, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;

    invoke-direct {v9, p0, p2, v3}, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;ZLcom/android/launcher3/allapps/AllAppsContainerView;)V

    .line 163
    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    .line 164
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getSearchBarView()Landroid/view/View;

    move-result-object v6

    .line 165
    const/4 v8, 0x1

    move-object v0, p0

    move v7, p1

    .line 163
    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 166
    return-void
.end method

.method public startAnimationToWidgets(Z)V
    .registers 12

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v3

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsButton()Landroid/view/View;

    move-result-object v2

    .line 175
    new-instance v9, Lcom/android/launcher3/LauncherStateTransitionAnimation$2;

    invoke-direct {v9, p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$2;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;)V

    .line 181
    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    .line 182
    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    .line 183
    const/4 v8, 0x1

    move-object v0, p0

    move v7, p1

    .line 181
    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 184
    return-void
.end method

.method public startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V
    .registers 8

    .prologue
    .line 192
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p2, v0, :cond_13

    .line 193
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-eq p2, v0, :cond_13

    .line 194
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq p2, v0, :cond_13

    .line 195
    const-string v0, "LauncherStateTransitionAnimation"

    const-string v1, "Unexpected call to startAnimationToWorkspace"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_13
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v0, :cond_1f

    .line 199
    :cond_1b
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromAllApps(Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V

    .line 208
    :cond_1e
    :goto_1e
    return-void

    .line 202
    :cond_1f
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromWidgets(Lcom/android/launcher3/Workspace$State;IZLjava/lang/Runnable;)V

    .line 204
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v0, :cond_1e

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p4}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    goto :goto_1e
.end method
