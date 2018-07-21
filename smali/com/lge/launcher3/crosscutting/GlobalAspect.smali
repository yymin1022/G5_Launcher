.class public Lcom/lge/launcher3/crosscutting/GlobalAspect;
.super Ljava/lang/Object;
.source "GlobalAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/crosscutting/GlobalAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    :try_start_0
    const-class v0, Lcom/lge/launcher3/crosscutting/GlobalAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/crosscutting/GlobalAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_crosscutting_GlobalAspect$3$160eb5f0proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/crosscutting/GlobalAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/crosscutting/GlobalAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/crosscutting/GlobalAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_crosscutting_GlobalAspect"

    sget-object v2, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/crosscutting/GlobalAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/crosscutting/GlobalAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_crosscutting_GlobalAspect$3$160eb5f0(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "call(public boolean performHapticFeedback(..))"
    .end annotation

    .prologue
    .line 50
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/VibratorManager;->isVibratorFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    invoke-static {p1}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$around$com_lge_launcher3_crosscutting_GlobalAspect$3$160eb5f0proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    .line 54
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "context,intent"
        value = "(execution(public void onReceive(..)) && args(context, intent))"
    .end annotation

    .prologue
    .line 24
    invoke-static {p1}, Lcom/lge/launcher3/util/LGHomeFeature;->init(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "activity"
        value = "(execution(protected void onCreate(..)) && target(activity))"
    .end annotation

    .prologue
    .line 31
    invoke-static {p1}, Lcom/lge/launcher3/util/LGHomeFeature;->init(Ljava/lang/Object;)V

    .line 32
    const/4 v1, -0x1

    .line 35
    :try_start_4
    instance-of v0, p1, Lcom/lge/launcher3/crosscutting/INonTitleBar;

    if-eqz v0, :cond_e

    .line 36
    sget v0, Lcom/lge/internal/R$style;->Theme_LGE_White_DarkActionBar_Wallpaper_NoTitleBar:I
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_a} :catch_11
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_a} :catch_2b

    .line 43
    :goto_a
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 44
    return-void

    .line 38
    :cond_e
    :try_start_e
    sget v0, Lcom/lge/internal/R$style;->Theme_LGE_White:I
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_10} :catch_11
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_10} :catch_2b

    goto :goto_a

    .line 40
    :catch_11
    move-exception v0

    .line 41
    :goto_12
    sget-object v2, Lcom/lge/launcher3/crosscutting/GlobalAspect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WhiteTheme unsupported "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move v0, v1

    goto :goto_a

    .line 40
    :catch_2b
    move-exception v0

    goto :goto_12
.end method

.method synthetic ajc$declare_parents_1()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = false
        parentTypes = "com.lge.launcher3.crosscutting.INonTitleBar"
        targetTypePattern = "com.android.launcher3.Launcher"
    .end annotation

    .prologue
    .line 1
    return-void
.end method
