.class public Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;
.super Ljava/lang/Object;
.source "LauncherAppWidgetInfoItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetInfoItds$com_android_launcher3_LauncherAppWidgetInfo$getHostView(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 2

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->ajc$get$hostView(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetInfoItds$com_android_launcher3_LauncherAppWidgetInfo$getHostView(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_LauncherAppWidgetInfoItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
