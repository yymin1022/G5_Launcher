.class public Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostAspect$1$5ec01b89proceed(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/appwidget/AppWidgetHostView;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_LauncherAppWidgetHostAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostAspect$1$5ec01b89(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/appwidget/AppWidgetHostView;
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,appWidgetId,appWidget,ajc$aroundClosure"
        value = "(execution(AppWidgetHostView LauncherAppWidgetHost.createView(..)) && args(context, appWidgetId, appWidget))"
    .end annotation

    .prologue
    .line 17
    invoke-static {p1, p2, p3, p4}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherAppWidgetHostAspect$1$5ec01b89proceed(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 19
    if-eqz v0, :cond_1c

    instance-of v1, p1, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1c

    .line 20
    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setClickable(Z)V

    .line 23
    :cond_1c
    return-object v0
.end method
