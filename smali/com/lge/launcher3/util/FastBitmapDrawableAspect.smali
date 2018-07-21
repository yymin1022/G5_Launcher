.class public Lcom/lge/launcher3/util/FastBitmapDrawableAspect;
.super Ljava/lang/Object;
.source "FastBitmapDrawableAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/util/FastBitmapDrawableAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_util_FastBitmapDrawableAspect$1$21c3e068proceed(Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/util/IFastBitmapDrawable;

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_util_FastBitmapDrawableAspect"

    sget-object v2, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_util_FastBitmapDrawableAspect$1$21c3e068(Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "b,ajc$aroundClosure"
        value = "createConstructorFastBitmapDrawable(b)"
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method

.method synthetic ajc$declare_parents_1()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = false
        parentTypes = "com.lge.launcher3.util.IFastBitmapDrawable"
        targetTypePattern = "com.android.launcher3.FastBitmapDrawable"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method synthetic ajc$pointcut$$createConstructorFastBitmapDrawable$117(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "b"
        value = "(call(public com.lge.launcher3.util.IFastBitmapDrawable createConstructorFastBitmapDrawable(android.graphics.Bitmap)) && args(b))"
    .end annotation

    .prologue
    .line 10
    return-void
.end method
