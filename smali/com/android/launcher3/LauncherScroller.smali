.class public Lcom/android/launcher3/LauncherScroller;
.super Ljava/lang/Object;
.source "LauncherScroller.java"


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsStarted:Z

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const v13, 0x3e333333    # 0.175f

    const/4 v3, 0x0

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v12, 0x64

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/launcher3/LauncherScroller;->ajc$preClinit()V

    .line 65
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    sput v0, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    .line 73
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    .line 74
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    .line 85
    const/4 v0, 0x0

    move v6, v0

    move v4, v3

    :goto_35
    if-lt v6, v12, :cond_4e

    .line 119
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    sget-object v1, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    aput v2, v1, v12

    aput v2, v0, v12

    .line 122
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidScale:F

    .line 124
    sput v2, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    .line 125
    invoke-static {v2}, Lcom/android/launcher3/LauncherScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    sput v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    .line 130
    return-void

    .line 86
    :cond_4e
    int-to-float v0, v6

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v7, v0, v1

    move v1, v2

    move v5, v4

    .line 91
    :goto_55
    sub-float v0, v1, v5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float v4, v5, v0

    .line 92
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, v4

    sub-float v8, v2, v4

    mul-float/2addr v8, v0

    .line 93
    sub-float v0, v2, v4

    mul-float/2addr v0, v13

    const v9, 0x3eb33334    # 0.35000002f

    mul-float/2addr v9, v4

    add-float/2addr v0, v9

    mul-float/2addr v0, v8

    mul-float v9, v4, v4

    mul-float/2addr v9, v4

    add-float/2addr v9, v0

    .line 95
    cmpl-float v0, v9, v7

    if-ltz v0, :cond_c6

    sub-float v0, v9, v7

    :goto_75
    float-to-double v10, v0

    cmpg-double v0, v10, v14

    if-gez v0, :cond_c9

    .line 101
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    sub-float v1, v2, v4

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v1, v9

    add-float/2addr v1, v4

    mul-float/2addr v1, v8

    mul-float v8, v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v1, v4

    aput v1, v0, v6

    move v1, v2

    move v4, v3

    .line 106
    :goto_8b
    sub-float v0, v1, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float v3, v4, v0

    .line 107
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    sub-float v8, v2, v3

    mul-float/2addr v8, v0

    .line 108
    sub-float v0, v2, v3

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    add-float/2addr v0, v3

    mul-float/2addr v0, v8

    mul-float v9, v3, v3

    mul-float/2addr v9, v3

    add-float/2addr v9, v0

    .line 110
    cmpl-float v0, v9, v7

    if-ltz v0, :cond_d1

    sub-float v0, v9, v7

    :goto_a9
    float-to-double v10, v0

    cmpg-double v0, v10, v14

    if-gez v0, :cond_d4

    .line 117
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    sub-float v1, v2, v3

    mul-float/2addr v1, v13

    const v7, 0x3eb33334    # 0.35000002f

    mul-float/2addr v7, v3

    add-float/2addr v1, v7

    mul-float/2addr v1, v8

    mul-float v7, v3, v3

    mul-float/2addr v3, v7

    add-float/2addr v1, v3

    aput v1, v0, v6

    .line 85
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v3, v4

    move v4, v5

    goto/16 :goto_35

    .line 95
    :cond_c6
    neg-float v0, v9

    add-float/2addr v0, v7

    goto :goto_75

    .line 98
    :cond_c9
    cmpl-float v0, v9, v7

    if-lez v0, :cond_cf

    move v1, v4

    goto :goto_55

    :cond_cf
    move v5, v4

    .line 90
    goto :goto_55

    .line 110
    :cond_d1
    neg-float v0, v9

    add-float/2addr v0, v7

    goto :goto_a9

    .line 114
    :cond_d4
    cmpl-float v0, v9, v7

    if-lez v0, :cond_da

    move v1, v3

    goto :goto_8b

    :cond_da
    move v4, v3

    .line 105
    goto :goto_8b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 151
    return-void

    .line 150
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 6

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$interFieldInit$com_lge_launcher3_LauncherScrollerWatcherAspect$com_android_launcher3_LauncherScroller$mIsStarted(Lcom/android/launcher3/LauncherScroller;)V

    .line 59
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 160
    iput-object p2, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mPpi:F

    .line 162
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeceleration:F

    .line 163
    iput-boolean p3, p0, Lcom/android/launcher3/LauncherScroller;->mFlywheel:Z

    .line 165
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    .line 166
    return-void
.end method

.method public static ajc$get$mCurrX(Lcom/android/launcher3/LauncherScroller;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    return v0
.end method

.method public static ajc$get$mCurrY(Lcom/android/launcher3/LauncherScroller;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    return v0
.end method

.method public static ajc$get$mFinished(Lcom/android/launcher3/LauncherScroller;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    return v0
.end method

.method public static ajc$get$mInterpolator(Lcom/android/launcher3/LauncherScroller;)Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public static ajc$get$mIsStarted(Lcom/android/launcher3/LauncherScroller;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mIsStarted:Z

    return v0
.end method

.method public static ajc$get$mStartX(Lcom/android/launcher3/LauncherScroller;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    return v0
.end method

.method public static ajc$get$mStartY(Lcom/android/launcher3/LauncherScroller;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherScroller.java"

    const-class v2, Lcom/android/launcher3/LauncherScroller;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "11"

    const-string v2, "forceFinished"

    const-string v3, "com.android.launcher3.LauncherScroller"

    const-string v4, "boolean"

    const-string v5, "finished"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherScroller;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "computeScrollOffset"

    const-string v3, "com.android.launcher3.LauncherScroller"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x11c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherScroller;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "startScroll"

    const-string v3, "com.android.launcher3.LauncherScroller"

    const-string v4, "int:int:int:int:int"

    const-string v5, "startX:startY:dx:dy:duration"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x179

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherScroller;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "abortAnimation"

    const-string v3, "com.android.launcher3.LauncherScroller"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1f6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherScroller;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mCurrX(Lcom/android/launcher3/LauncherScroller;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    return-void
.end method

.method public static ajc$set$mCurrY(Lcom/android/launcher3/LauncherScroller;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    return-void
.end method

.method public static ajc$set$mFinished(Lcom/android/launcher3/LauncherScroller;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    return-void
.end method

.method public static ajc$set$mInterpolator(Lcom/android/launcher3/LauncherScroller;Landroid/animation/TimeInterpolator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static ajc$set$mIsStarted(Lcom/android/launcher3/LauncherScroller;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherScroller;->mIsStarted:Z

    return-void
.end method

.method public static ajc$set$mStartX(Lcom/android/launcher3/LauncherScroller;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    return-void
.end method

.method public static ajc$set$mStartY(Lcom/android/launcher3/LauncherScroller;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    return-void
.end method

.method private computeDeceleration(F)F
    .registers 4

    .prologue
    .line 181
    const v0, 0x43c10b3d

    .line 183
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mPpi:F

    .line 181
    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .registers 5

    .prologue
    .line 466
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .registers 10

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 477
    sget v2, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 478
    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    iget v5, p0, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private getSplineFlingDuration(F)I
    .registers 8

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 471
    sget v2, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 472
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method static viscousFluid(F)F
    .registers 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 483
    sget v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidScale:F

    mul-float/2addr v0, p0

    .line 484
    cmpg-float v1, v0, v4

    if-gez v1, :cond_17

    .line 485
    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 491
    :goto_13
    sget v1, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    mul-float/2addr v0, v1

    .line 492
    return v0

    .line 487
    :cond_17
    const v1, 0x3ebc5ab2

    .line 488
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 489
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_13
.end method


# virtual methods
.method public abortAnimation()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 503
    :try_start_6
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 504
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_11} :catch_19

    .line 506
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$4$269b725(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_19
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$4$269b725(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public computeScrollOffset()Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    sget-object v1, Lcom/android/launcher3/LauncherScroller;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    .line 285
    :try_start_9
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_b} :catch_4d

    if-eqz v1, :cond_16

    .line 286
    const/4 v0, 0x0

    .line 342
    :cond_e
    :goto_e
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$2$b6dff906(Lorg/aspectj/lang/JoinPoint;)V

    return v0

    .line 289
    :cond_16
    :try_start_16
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 291
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    if-ge v1, v2, :cond_ec

    .line 292
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    packed-switch v2, :pswitch_data_fa

    goto :goto_e

    .line 294
    :pswitch_28
    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    mul-float/2addr v1, v2

    .line 296
    iget-object v2, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v2, :cond_56

    .line 297
    invoke-static {v1}, Lcom/android/launcher3/LauncherScroller;->viscousFluid(F)F

    move-result v1

    .line 301
    :goto_34
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 302
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaY:F

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_4c} :catch_4d

    goto :goto_e

    .line 342
    :catch_4d
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$2$b6dff906(Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 299
    :cond_56
    :try_start_56
    iget-object v2, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_34

    .line 305
    :pswitch_5d
    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v2, v2

    div-float v4, v1, v2

    .line 306
    mul-float v1, v8, v4

    float-to-int v5, v1

    .line 307
    const/high16 v2, 0x3f800000    # 1.0f

    .line 308
    const/4 v1, 0x0

    .line 309
    const/16 v6, 0x64

    if-ge v5, v6, :cond_86

    .line 310
    int-to-float v1, v5

    div-float v2, v1, v8

    .line 311
    add-int/lit8 v1, v5, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 312
    sget-object v6, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    aget v6, v6, v5

    .line 313
    sget-object v7, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    .line 314
    sub-float/2addr v5, v6

    sub-float/2addr v1, v2

    div-float v1, v5, v1

    .line 315
    sub-float v2, v4, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v6

    .line 318
    :cond_86
    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mDistance:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrVelocity:F

    .line 320
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v5, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 322
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 323
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 325
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v5, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 327
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 328
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 330
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    if-ne v1, v2, :cond_e

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    if-ne v1, v2, :cond_e

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    goto/16 :goto_e

    .line 338
    :cond_ec
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 339
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_f7} :catch_4d

    goto/16 :goto_e

    .line 292
    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_28
        :pswitch_5d
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 4

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherScroller;->timePassed()I

    move-result v0

    .line 518
    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    .line 519
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 521
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 19

    .prologue
    .line 413
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherScroller;->mFlywheel:Z

    if-eqz v2, :cond_43

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v2, :cond_43

    .line 414
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherScroller;->getCurrVelocity()F

    move-result v2

    .line 416
    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 417
    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v5, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 418
    float-to-double v6, v3

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v5, v6

    .line 420
    div-float/2addr v3, v5

    .line 421
    div-float/2addr v4, v5

    .line 423
    mul-float/2addr v3, v2

    .line 424
    mul-float/2addr v2, v4

    .line 425
    int-to-float v4, p3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_43

    .line 426
    int-to-float v4, p4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_43

    .line 427
    int-to-float v4, p3

    add-float/2addr v3, v4

    float-to-int p3, v3

    .line 428
    int-to-float v3, p4

    add-float/2addr v2, v3

    float-to-int p4, v2

    .line 432
    :cond_43
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    .line 433
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 435
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v4, v2

    .line 437
    iput v4, p0, Lcom/android/launcher3/LauncherScroller;->mVelocity:F

    .line 438
    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherScroller;->getSplineFlingDuration(F)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    .line 439
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    .line 440
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    .line 441
    iput p2, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    .line 443
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_c9

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v2

    .line 444
    :goto_6a
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_cd

    const/high16 v2, 0x3f800000    # 1.0f

    .line 446
    :goto_71
    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherScroller;->getSplineFlingDistance(F)D

    move-result-wide v6

    .line 447
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/LauncherScroller;->mDistance:I

    .line 449
    iput p5, p0, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    .line 450
    move/from16 v0, p6

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    .line 451
    move/from16 v0, p7

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    .line 452
    move/from16 v0, p8

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    .line 454
    float-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 456
    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 457
    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 459
    float-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 461
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 462
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 463
    return-void

    .line 443
    :cond_c9
    int-to-float v2, p3

    div-float/2addr v2, v4

    move v3, v2

    goto :goto_6a

    .line 444
    :cond_cd
    int-to-float v2, p4

    div-float/2addr v2, v4

    goto :goto_71
.end method

.method public final forceFinished(Z)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 203
    :try_start_a
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_14

    .line 204
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$3$4c34c911(ZLorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_14
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$3$4c34c911(ZLorg/aspectj/lang/JoinPoint;)V

    throw v1
.end method

.method public getCurrVelocity()F
    .registers 4

    .prologue
    .line 240
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 241
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrVelocity:F

    .line 240
    :goto_7
    return v0

    .line 241
    :cond_8
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mVelocity:F

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_7
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    return v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherScrollerItds$com_android_launcher3_LauncherScroller$getInterpolator(Lcom/android/launcher3/LauncherScroller;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 6

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    .line 563
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    .line 562
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public setFinalX(I)V
    .registers 4

    .prologue
    .line 540
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 541
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 543
    return-void
.end method

.method public setFinalY(I)V
    .registers 4

    .prologue
    .line 553
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 554
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaY:F

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 556
    return-void
.end method

.method public final setFriction(F)V
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeceleration:F

    .line 177
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    .line 178
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 134
    return-void
.end method

.method public startScroll(IIII)V
    .registers 11

    .prologue
    .line 360
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 361
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher3/LauncherScroller;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 378
    const/4 v0, 0x0

    :try_start_2d
    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 380
    iput p5, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    .line 381
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    .line 382
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    .line 383
    iput p2, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    .line 384
    add-int v0, p1, p3

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 385
    add-int v0, p2, p4

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 386
    int-to-float v0, p3

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    .line 387
    int-to-float v0, p4

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaY:F

    .line 388
    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_54} :catch_5c

    .line 389
    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$1$b2aaf387(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_5c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->aspectOf()Lcom/lge/launcher3/LauncherScrollerWatcherAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/LauncherScrollerWatcherAspect;->ajc$after$com_lge_launcher3_LauncherScrollerWatcherAspect$1$b2aaf387(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public timePassed()I
    .registers 5

    .prologue
    .line 529
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
