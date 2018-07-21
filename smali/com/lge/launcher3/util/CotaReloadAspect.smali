.class public Lcom/lge/launcher3/util/CotaReloadAspect;
.super Ljava/lang/Object;
.source "CotaReloadAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/util/CotaReloadAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_util_CotaReloadAspect$1$20b01966proceed(Landroid/content/pm/PackageManager;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/Partner;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Partner;

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_util_CotaReloadAspect$com_android_launcher3_Partner$getforPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/Partner;
    .registers 5

    .prologue
    .line 28
    invoke-static {p1, p0}, Lcom/lge/launcher3/util/Utilities;->findApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_15

    .line 30
    new-instance v2, Lcom/android/launcher3/Partner;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    move-object v0, v2

    .line 32
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_util_CotaReloadAspect$com_android_launcher3_Partner$getforPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/Partner;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/launcher3/Partner;->getforPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/Partner;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/util/CotaReloadAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/util/CotaReloadAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/CotaReloadAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/util/CotaReloadAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/CotaReloadAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_util_CotaReloadAspect"

    sget-object v2, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/CotaReloadAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/CotaReloadAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_util_CotaReloadAspect$1$20b01966(Landroid/content/pm/PackageManager;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/Partner;
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "pm,ajc$aroundClosure"
        value = "(call(Partner Partner.get(PackageManager)) && (args(pm) && withincode(* *loadDefaultFavoritesIfNecessary())))"
    .end annotation

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$around$com_lge_launcher3_util_CotaReloadAspect$1$20b01966proceed(Landroid/content/pm/PackageManager;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 16
    if-nez v0, :cond_2a

    .line 17
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    const-string v2, "launcher.cota.path"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 20
    const-string v0, "launcher.cota.path"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$interMethodDispatch1$com_lge_launcher3_util_CotaReloadAspect$com_android_launcher3_Partner$getforPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 24
    :cond_2a
    return-object v0
.end method
