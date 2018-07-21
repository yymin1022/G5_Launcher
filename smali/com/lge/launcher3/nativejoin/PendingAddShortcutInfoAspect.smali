.class public Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;
.super Ljava/lang/Object;
.source "PendingAddShortcutInfoAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_PendingAddShortcutInfoAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/PendingAddShortcutInfoAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_PendingAddShortcutInfoAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "constructor()"
    .end annotation

    .prologue
    .line 10
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 11
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 12
    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$initFlags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->flags:I

    .line 13
    return-void
.end method

.method public synthetic ajc$pointcut$$constructor$f2()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "initialization(com.android.launcher3.widget.PendingAddShortcutInfo.new(..))"
    .end annotation

    .prologue
    .line 8
    return-void
.end method
