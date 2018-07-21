.class public Lcom/lge/launcher3/nativejoin/CleanViewAspect;
.super Ljava/lang/Object;
.source "CleanViewAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CleanViewAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/CleanViewAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/CleanViewAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_CleanViewAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/CleanViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/CleanViewAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_CleanViewAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "initialization(Workspace.new(..))"
    .end annotation

    .prologue
    .line 29
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 30
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$initScaleGestureDetector(Lcom/android/launcher3/Workspace;)V

    .line 31
    return-void
.end method
