.class public Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;
.super Ljava/lang/Object;
.source "AppWidgetAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_dynamicgrid_AppWidgetAspect$1$9584124eproceed(Landroid/content/ComponentName;IILorg/aspectj/runtime/internal/AroundClosure;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_dynamicgrid_AppWidgetAspect"

    sget-object v2, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dynamicgrid/AppWidgetAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_dynamicgrid_AppWidgetAspect$1$9584124e(Landroid/content/ComponentName;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)[I
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "component,minWidth,minHeight,ajc$aroundClosure"
        value = "getSpanForWidget(component, minWidth, minHeight)"
    .end annotation

    .prologue
    .line 10
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 13
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p1, p2, p3, v1}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method
