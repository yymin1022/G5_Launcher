.class public Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostViewItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$1$ffd0d224proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$sLGEWidgetPaddingRatio()F

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;)V
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio(F)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$set$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio(F)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$set$sLGEWidgetPaddingRatio(F)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$dispatchDrawAround(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    .line 84
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x4

    const/16 v2, 0x83

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$dispatchDraw(Landroid/graphics/Canvas;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 88
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onMeasureAround(Lcom/android/launcher3/LauncherAppWidgetHostView;II)V
    .registers 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    .line 50
    if-ne v2, v3, :cond_40

    .line 52
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    .line 56
    :goto_1b
    instance-of v2, v0, Lcom/lge/launcher3/profile/LGDeviceProfile;

    if-eqz v2, :cond_77

    .line 57
    check-cast v0, Lcom/lge/launcher3/profile/LGDeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/profile/LGDeviceProfile;->getAppWidgetScale(Landroid/content/Context;)F

    move-result v0

    .line 60
    :goto_29
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 61
    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_47

    .line 62
    :cond_3c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$onMeasure(II)V

    .line 81
    :goto_3f
    return-void

    .line 53
    :cond_40
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    goto :goto_1b

    .line 66
    :cond_47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 67
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 70
    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 69
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 72
    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 71
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 74
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$onMeasure(II)V

    .line 77
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 78
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$setMeasuredDimension(II)V

    goto :goto_3f

    :cond_77
    move v0, v1

    goto :goto_29
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onTouchEventCallSuper(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$toString(Lcom/android/launcher3/LauncherAppWidgetHostView;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 91
    const-string v0, "??"

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 93
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$mContext(Lcom/android/launcher3/LauncherAppWidgetHostView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 94
    if-eqz v1, :cond_14

    .line 95
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppWidget {"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$dispatchDrawAround(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/graphics/Canvas;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds$dispatchDrawAround(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onMeasureAround(Lcom/android/launcher3/LauncherAppWidgetHostView;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds$onMeasureAround(II)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onTouchEventCallSuper(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$interMethodDispatch2$com_lge_launcher3_nativeitds$onTouchEventCallSuper(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$toString(Lcom/android/launcher3/LauncherAppWidgetHostView;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$1$ffd0d224(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void LauncherAppWidgetHostView.setAppWidget(..))"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 30
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$around$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$1$ffd0d224proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 31
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 32
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;Z)V

    .line 34
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_48

    .line 35
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_48

    .line 37
    const v2, 0x7f090016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio(F)V

    .line 41
    :cond_48
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_85

    .line 42
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 43
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getPaddingEnd()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 42
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setPaddingRelative(IIII)V

    .line 45
    :cond_85
    return-void
.end method
