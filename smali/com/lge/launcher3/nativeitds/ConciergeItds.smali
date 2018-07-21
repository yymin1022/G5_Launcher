.class public Lcom/lge/launcher3/nativeitds/ConciergeItds;
.super Ljava/lang/Object;
.source "ConciergeItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ConciergeItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/InsettableFrameLayout;->ajc$get$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)V
    .registers 2

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->ajc$set$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$getForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z
    .registers 2

    .prologue
    .line 19
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$setForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V
    .registers 2

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V

    .line 16
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;
    .registers 2

    .prologue
    .line 9
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->ajc$get$mState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$getForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->getForceIgnoreInsets()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$setForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->setForceIgnoreInsets(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getState()Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/ConciergeItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ConciergeItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/ConciergeItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ConciergeItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_ConciergeItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ConciergeItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ConciergeItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
