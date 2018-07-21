.class public Lcom/lge/launcher3/nativeitds/CleanViewItds;
.super Ljava/lang/Object;
.source "CleanViewItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CleanViewItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativeitds_CleanViewItds$1$62184db2proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$isMultiTouch(Lcom/android/launcher3/Workspace;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->isMultiTouch:Z

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mCleanViewAnimator(Lcom/android/launcher3/Workspace;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector(Lcom/android/launcher3/Workspace;)Landroid/view/ScaleGestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector1(Lcom/android/launcher3/Workspace;)Landroid/view/ScaleGestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScaleDetector1:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$isMultiTouch(Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$isMultiTouch(Lcom/android/launcher3/Workspace;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mCleanViewAnimator(Lcom/android/launcher3/Workspace;)V
    .registers 1

    .prologue
    .line 29
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector(Lcom/android/launcher3/Workspace;)V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector1(Lcom/android/launcher3/Workspace;)V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$isMultiTouch(Lcom/android/launcher3/Workspace;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->isMultiTouch:Z

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mCleanViewAnimator(Lcom/android/launcher3/Workspace;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector(Lcom/android/launcher3/Workspace;Landroid/view/ScaleGestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$mScaleDetector1(Lcom/android/launcher3/Workspace;Landroid/view/ScaleGestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mScaleDetector1:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$enterCleanViewMode(Lcom/android/launcher3/Launcher;)V
    .registers 4

    .prologue
    .line 255
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_24

    .line 256
    sget-object v0, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    :try_start_a
    invoke-static {p0, v0}, Lcom/android/launcher3/Launcher;->ajc$set$mState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_25

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 257
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewActivatedIntent(Landroid/app/Activity;)V

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateIntoCleanView(Lcom/android/launcher3/Workspace;Z)V

    .line 259
    const-string v0, "Home_CleanView"

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    :cond_24
    return-void

    .line 256
    :catch_25
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v1
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$exitCleanViewMode(Lcom/android/launcher3/Launcher;)V
    .registers 4

    .prologue
    .line 264
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_1e

    .line 265
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewDeactivatedIntent(Landroid/app/Activity;)V

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateOutCleanView(Lcom/android/launcher3/Workspace;)V

    .line 267
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    :try_start_12
    invoke-static {p0, v0}, Lcom/android/launcher3/Launcher;->ajc$set$mState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$State;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_1f

    nop

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    nop

    .line 269
    :cond_1e
    return-void

    .line 267
    :catch_1f
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceAspect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/hotword/HotwordServiceAspect;->ajc$after$com_lge_launcher3_hotword_HotwordServiceAspect$7$144f138c(Lcom/android/launcher3/Launcher$State;)V

    throw v1
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewActivatedIntent(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 272
    new-instance v0, Lcom/android/launcher3/Launcher$CleanViewItds$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$CleanViewItds$1;-><init>(Landroid/app/Activity;)V

    .line 279
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher$CleanViewItds$1;->start()V

    .line 280
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewDeactivatedIntent(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 283
    new-instance v0, Lcom/android/launcher3/Launcher$CleanViewItds$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$CleanViewItds$2;-><init>(Landroid/app/Activity;)V

    .line 290
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher$CleanViewItds$2;->start()V

    .line 291
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateIntoCleanView(Lcom/android/launcher3/Workspace;Z)V
    .registers 16

    .prologue
    const/4 v11, 0x0

    const-wide/16 v12, 0xc8

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    const v3, 0x7f0e0053

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 78
    const v4, 0x7f0e0054

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_27

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    .line 85
    :cond_27
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 87
    :goto_34
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v6

    if-lt v0, v6, :cond_95

    .line 110
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_eb

    move v0, v1

    .line 111
    :goto_47
    if-eqz v0, :cond_62

    if-eqz v3, :cond_62

    if-eqz v4, :cond_62

    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 113
    const-string v6, "translationY"

    new-array v7, v2, [F

    .line 114
    aput v0, v7, v1

    .line 113
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 116
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_62
    if-eqz v4, :cond_74

    .line 119
    const-string v0, "alpha"

    new-array v2, v2, [F

    aput v11, v2, v1

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_74
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/Workspace$CleanViewItds$2;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher3/Workspace$CleanViewItds$2;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    if-nez p1, :cond_8c

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 152
    :cond_8c
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 153
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 155
    return-void

    .line 88
    :cond_95
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 89
    if-nez v6, :cond_9e

    .line 87
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 92
    :cond_9e
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v7

    if-ne v7, v0, :cond_e1

    .line 93
    const-string v7, "scaleX"

    new-array v8, v2, [F

    aput v10, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 94
    const-string v8, "scaleY"

    new-array v9, v2, [F

    aput v10, v9, v1

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 95
    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 96
    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v7, "alpha"

    new-array v8, v2, [F

    aput v11, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 101
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 105
    :cond_e1
    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleX(F)V

    .line 106
    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleY(F)V

    .line 107
    invoke-virtual {v6, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9b

    :cond_eb
    move v0, v2

    .line 110
    goto/16 :goto_47
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateOutCleanView(Lcom/android/launcher3/Workspace;)V
    .registers 15

    .prologue
    const-wide/16 v12, 0xc8

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    const v2, 0x7f0e0053

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 160
    const v3, 0x7f0e0054

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_26

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    .line 166
    :cond_26
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    .line 167
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 169
    :goto_33
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v5

    if-lt v0, v5, :cond_99

    .line 192
    if-eqz v2, :cond_4c

    .line 193
    const-string v0, "translationY"

    new-array v5, v10, [F

    const/4 v6, 0x0

    aput v6, v5, v1

    invoke-static {v2, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 195
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_4c
    if-eqz v3, :cond_5e

    .line 198
    const-string v0, "alpha"

    new-array v5, v10, [F

    aput v9, v5, v1

    invoke-static {v3, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_5e
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mScreenOrder(Lcom/android/launcher3/Workspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v6, -0x12d

    cmp-long v0, v0, v6

    if-nez v0, :cond_81

    .line 204
    if-eqz v2, :cond_81

    if-eqz v3, :cond_81

    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 208
    :cond_81
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/Workspace$CleanViewItds$3;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/Workspace$CleanViewItds$3;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 233
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 235
    return-void

    .line 170
    :cond_99
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 171
    if-nez v5, :cond_a2

    .line 169
    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 174
    :cond_a2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v6

    if-ne v6, v0, :cond_e5

    .line 175
    const-string v6, "scaleX"

    new-array v7, v10, [F

    aput v9, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 176
    const-string v7, "scaleY"

    new-array v8, v10, [F

    aput v9, v8, v1

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 177
    invoke-virtual {v6, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v9, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 183
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 185
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 187
    :cond_e5
    invoke-virtual {v5, v9}, Landroid/view/View;->setScaleX(F)V

    .line 188
    invoke-virtual {v5, v9}, Landroid/view/View;->setScaleY(F)V

    .line 189
    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9f
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$initScaleGestureDetector(Lcom/android/launcher3/Workspace;)V
    .registers 4

    .prologue
    .line 36
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/android/launcher3/Workspace$CleanViewItds$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Workspace$CleanViewItds$1;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 36
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 73
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$interceptMultiTouchEvent(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 238
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherItds$com_android_launcher3_Launcher$isCleanViewState(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 239
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mState(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 240
    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 241
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->isMultiTouch:Z

    .line 243
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$enterCleanViewMode(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->enterCleanViewMode()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$exitCleanViewMode(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->exitCleanViewMode()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewActivatedIntent(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->sendCleanViewActivatedIntent(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewDeactivatedIntent(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->sendCleanViewDeactivatedIntent(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateIntoCleanView(Lcom/android/launcher3/Workspace;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->animateIntoCleanView(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$animateOutCleanView(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->animateOutCleanView()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$initScaleGestureDetector(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->initScaleGestureDetector()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$interceptMultiTouchEvent(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->interceptMultiTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/CleanViewItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CleanViewItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/CleanViewItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CleanViewItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_CleanViewItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CleanViewItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/CleanViewItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_nativeitds_CleanViewItds$1$62184db2(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,ajc$aroundClosure"
        value = "(execution(public boolean Workspace.onInterceptTouchEvent(MotionEvent)) && args(ev))"
    .end annotation

    .prologue
    .line 247
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 248
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$interceptMultiTouchEvent(Lcom/android/launcher3/Workspace;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_d
    return v0

    :cond_e
    invoke-static {p1, p2}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$around$com_lge_launcher3_nativeitds_CleanViewItds$1$62184db2proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_d
.end method
