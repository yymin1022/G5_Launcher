.class public Lcom/lge/launcher3/nativejoin/FocusHelperAspect;
.super Ljava/lang/Object;
.source "FocusHelperAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FocusHelperAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FocusHelperAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/FocusHelperAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FocusHelperAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_FocusHelperAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FocusHelperAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/FocusHelperAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FocusHelperAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
