.class public Lcom/lge/launcher3/initialguide/InitialGuideAspect;
.super Ljava/lang/Object;
.source "InitialGuideAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/initialguide/InitialGuideAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/initialguide/InitialGuideAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/initialguide/InitialGuideAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_initialguide_InitialGuideAspect"

    sget-object v2, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/initialguide/InitialGuideAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_initialguide_InitialGuideAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.finishBindingItems())"
    .end annotation

    .prologue
    .line 17
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 18
    invoke-static {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuideManager;

    move-result-object v0

    .line 20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->setReadyToShow(Z)V

    .line 21
    return-void
.end method
