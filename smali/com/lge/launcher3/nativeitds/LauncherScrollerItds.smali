.class public Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;
.super Ljava/lang/Object;
.source "LauncherScrollerItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherScrollerItds$com_android_launcher3_LauncherScroller$getInterpolator(Lcom/android/launcher3/LauncherScroller;)Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/launcher3/LauncherScroller;->ajc$get$mInterpolator(Lcom/android/launcher3/LauncherScroller;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherScrollerItds$com_android_launcher3_LauncherScroller$getInterpolator(Lcom/android/launcher3/LauncherScroller;)Landroid/animation/TimeInterpolator;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherScroller;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_LauncherScrollerItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherScrollerItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
