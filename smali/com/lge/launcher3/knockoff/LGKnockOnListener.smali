.class public final Lcom/lge/launcher3/knockoff/LGKnockOnListener;
.super Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$SimpleOnGestureListener;
.source "LGKnockOnListener.java"


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSecondDownEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/lge/launcher3/knockoff/LGHomeGestureDetector$SimpleOnGestureListener;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mSecondDownEvent:Landroid/view/MotionEvent;

    .line 31
    if-nez p1, :cond_12

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context for listener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private getGestureTurnScreenOn(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    if-nez p1, :cond_e

    .line 100
    sget-object v0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->TAG:Ljava/lang/String;

    const-string v2, "getGestureTurnScreenOn() : context is null"

    new-array v3, v1, [I

    invoke-static {v0, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 110
    :goto_d
    return v1

    .line 104
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_20

    .line 107
    const-string v3, "gesture_trun_screen_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 108
    if-ne v2, v0, :cond_1e

    :goto_1c
    move v1, v0

    .line 110
    goto :goto_d

    :cond_1e
    move v0, v1

    .line 108
    goto :goto_1c

    :cond_20
    move v0, v1

    goto :goto_1c
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_13

    move v0, v1

    .line 91
    :goto_12
    return v0

    .line 81
    :cond_13
    const-string v0, "sys.knockon.knockoff.distance"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 82
    if-nez v0, :cond_43

    .line 83
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    .line 88
    :goto_25
    mul-int/2addr v0, v0

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 91
    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    if-ge v2, v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_12

    .line 85
    :cond_43
    iget-object v2, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/lge/launcher3/util/WindowUtils;->getRealMillimeterPixel(Landroid/content/Context;I)I

    move-result v0

    goto :goto_25

    :cond_4a
    move v0, v1

    .line 91
    goto :goto_12
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 42
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_50

    .line 68
    :cond_a
    :goto_a
    return v4

    .line 44
    :pswitch_b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mSecondDownEvent:Landroid/view/MotionEvent;

    goto :goto_a

    .line 48
    :pswitch_12
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mSecondDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    .line 52
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mSecondDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, p1}, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->getGestureTurnScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 55
    :try_start_2a
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v2, v3, v1}, Lcom/lge/launcher3/util/LGUtilFunctionReflect$OsManagerReflect;->goToSleepWithForce(Landroid/content/Context;JI)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_3a

    .line 62
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->mSecondDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_a

    .line 57
    :catch_3a
    move-exception v0

    .line 58
    sget-object v1, Lcom/lge/launcher3/knockoff/LGKnockOnListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDoubleTap Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 42
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_b
        :pswitch_12
    .end packed-switch
.end method
