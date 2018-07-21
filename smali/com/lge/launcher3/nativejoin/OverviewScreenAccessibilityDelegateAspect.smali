.class public Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;
.super Ljava/lang/Object;
.source "OverviewScreenAccessibilityDelegateAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_OverviewScreenAccessibilityDelegateAspect$1$173fd6c1proceed(Landroid/view/View;ILandroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 13
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_OverviewScreenAccessibilityDelegateAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_nativejoin_OverviewScreenAccessibilityDelegateAspect$1$173fd6c1(Landroid/view/View;ILandroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "host,action,args,ajc$aroundClosure"
        value = "performAccessibilityAction(host, action, args)"
    .end annotation

    .prologue
    .line 15
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;

    .line 16
    invoke-static {v0, p1, p2, p3}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$aroundPerformAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic ajc$pointcut$$performAccessibilityAction$158(Landroid/view/View;ILandroid/os/Bundle;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "host,action,args"
        value = "(execution(public boolean performAccessibilityAction(android.view.View, int, android.os.Bundle)) && (args(host, action, args) && within(com.android.launcher3.accessibility.OverviewScreenAccessibilityDelegate)))"
    .end annotation

    .prologue
    .line 10
    return-void
.end method
