.class public Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;
.super Ljava/lang/Object;
.source "BubbleTextViewAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_BubbleTextViewAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_BubbleTextViewAspect$1$9398dc72(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/aspectj/lang/JoinPoint;)V
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "context,attrs"
        value = "(initialization(BubbleTextView.new(..)) && args(context, attrs))"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 31
    invoke-static {p1, p2, v0, v5}, Lcom/lge/launcher3/util/TextUtils;->getFontScale(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/launcher3/BubbleTextView;I)F

    move-result v1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 35
    const v4, 0x7f090007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    .line 36
    mul-float/2addr v1, v2

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 39
    new-instance v1, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect$BubbleTextViewAspect$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect$BubbleTextViewAspect$1;-><init>(Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    return-void
.end method
