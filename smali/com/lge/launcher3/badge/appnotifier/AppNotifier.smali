.class public Lcom/lge/launcher3/badge/appnotifier/AppNotifier;
.super Ljava/lang/Object;
.source "AppNotifier.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;

    invoke-direct {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;-><init>()V

    sput-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$perSingletonInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifier;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/badge/appnotifier/AppNotifier;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$perSingletonInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifier;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_badge_appnotifier_AppNotifier"

    sget-object v2, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$perSingletonInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifier;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifier;->ajc$perSingletonInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifier;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$before$com_lge_launcher3_badge_appnotifier_AppNotifier$1$119b79fc()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "onCreate()"
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->destoryInstance()V

    .line 20
    return-void
.end method

.method public ajc$before$com_lge_launcher3_badge_appnotifier_AppNotifier$2$7495cb5c(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "onDestroy()"
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->destroyAppNotifier()V

    .line 28
    return-void
.end method
