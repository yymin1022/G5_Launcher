.class public Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;
.super Ljava/lang/Object;
.source "OverviewScreenAccessibilityDelegateItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Landroid/os/Handler;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Ljava/lang/Runnable;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 10
    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/os/Handler;)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate$OverviewScreenAccessibilityDelegateItds$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate$OverviewScreenAccessibilityDelegateItds$1;-><init>(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$set$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$set$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/os/Handler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$set$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$set$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$aroundPerformAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_33

    .line 18
    const/16 v1, 0x40

    if-ne p2, v1, :cond_34

    .line 19
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 20
    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Z)V

    .line 21
    invoke-static {p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$mWorkspace(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 22
    invoke-static {p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$mWorkspace(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 23
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$superDispatch$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 34
    :cond_33
    :goto_33
    return v0

    .line 26
    :cond_34
    invoke-static {}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$MOVE_FORWARD()I

    move-result v1

    if-ne p2, v1, :cond_48

    .line 27
    invoke-static {p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$mWorkspace(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$privMethod$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$movePage(ILandroid/view/View;)V

    goto :goto_33

    .line 29
    :cond_48
    invoke-static {}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$MOVE_BACKWARD()I

    move-result v1

    if-ne p2, v1, :cond_33

    .line 30
    invoke-static {p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$get$mWorkspace(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$privMethod$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$movePage(ILandroid/view/View;)V

    goto :goto_33
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$aroundPerformAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->aroundPerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
