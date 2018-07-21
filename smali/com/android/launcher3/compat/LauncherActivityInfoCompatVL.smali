.class public Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;
.super Lcom/android/launcher3/compat/LauncherActivityInfoCompat;
.source "LauncherActivityInfoCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->ajc$preClinit()V

    return-void
.end method

.method constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 33
    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherActivityInfoCompatVL.java"

    const-class v2, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getBadgedIcon"

    const-string v3, "com.android.launcher3.compat.LauncherActivityInfoCompatVL"

    const-string v4, "int"

    const-string v5, "density"

    const-string v6, ""

    const-string v7, "android.graphics.drawable.Drawable"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final getBadgedIcon_aroundBody0(Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;ILorg/aspectj/lang/JoinPoint;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static final getBadgedIcon_aroundBody1$advice(Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/liveicon/LiveIconAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/graphics/drawable/Drawable;
    .registers 10

    .prologue
    .line 76
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;

    .line 78
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-static {p3}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_liveicon_LiveIconAspect$com_lge_launcher3_liveicon_LiveIconAspect$mLiveIconManager(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/launcher3/liveicon/LiveIconManager;->hasLiveIcon(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 83
    invoke-static {p3}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_liveicon_LiveIconAspect$com_lge_launcher3_liveicon_LiveIconAspect$mLiveIconManager(Lcom/lge/launcher3/liveicon/LiveIconAspect;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->getBadgedIcon(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    :cond_21
    if-nez v0, :cond_27

    .line 87
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->getBadgedIcon_aroundBody0(Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;ILorg/aspectj/lang/JoinPoint;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    :cond_27
    return-object v0
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->aspectOf()Lcom/lge/launcher3/liveicon/LiveIconAspect;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->getBadgedIcon_aroundBody1$advice(Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/liveicon/LiveIconAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getFirstInstallTime()J
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatVL;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method
