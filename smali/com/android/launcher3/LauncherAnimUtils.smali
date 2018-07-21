.class public Lcom/android/launcher3/LauncherAnimUtils;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"


# static fields
.field static sAnimators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static sEndAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    .line 37
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelOnDestroyActivity(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 56
    return-void
.end method

.method public static createAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 1

    .prologue
    .line 93
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 94
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 95
    return-object v0
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 138
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 141
    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .registers 5

    .prologue
    .line 106
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 107
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 110
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 111
    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 112
    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;
    .registers 3

    .prologue
    .line 99
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 100
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 101
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 102
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .registers 4

    .prologue
    .line 117
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 118
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 120
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 121
    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 122
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .registers 5

    .prologue
    .line 127
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 128
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 130
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 131
    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 132
    return-object v0
.end method

.method public static onDestroyActivity()V
    .registers 3

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 90
    return-void

    .line 84
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 85
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 86
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 88
    :cond_25
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public static startAnimationAfterNextDraw(Landroid/animation/Animator;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/LauncherAnimUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/LauncherAnimUtils$2;-><init>(Landroid/animation/Animator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 80
    return-void
.end method
