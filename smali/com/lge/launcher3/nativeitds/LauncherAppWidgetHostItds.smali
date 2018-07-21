.class public Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostItds$com_android_launcher3_LauncherAppWidgetHost$getLauncher(Lcom/android/launcher3/LauncherAppWidgetHost;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 9
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->ajc$get$mLauncher(Lcom/android/launcher3/LauncherAppWidgetHost;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostItds$com_android_launcher3_LauncherAppWidgetHost$getLauncher(Lcom/android/launcher3/LauncherAppWidgetHost;)Lcom/android/launcher3/Launcher;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_LauncherAppWidgetHostItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
