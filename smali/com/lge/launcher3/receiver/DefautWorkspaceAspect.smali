.class public Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;
.super Ljava/lang/Object;
.source "DefautWorkspaceAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_receiver_DefautWorkspaceAspect$1$174fef51proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/DefaultLayoutParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DefaultLayoutParser;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_receiver_DefautWorkspaceAspect"

    sget-object v2, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_receiver_DefautWorkspaceAspect$1$174fef51(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DefaultLayoutParser;
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(private DefaultLayoutParser getDefaultLayoutParser())"
    .end annotation

    .prologue
    .line 14
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/LauncherProvider;

    .line 15
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/lge/launcher3/receiver/DefaultWorkspaceLoader;->getIDFromCAList(Landroid/content/Context;)I

    move-result v5

    .line 17
    if-nez v5, :cond_1d

    .line 18
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/InvariantDeviceProfile;->ajc$get$defaultLayoutId(Lcom/android/launcher3/InvariantDeviceProfile;)I

    move-result v5

    .line 20
    :cond_1d
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v3, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->ajc$get$mAppWidgetHost(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    iget-object v3, v3, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method
