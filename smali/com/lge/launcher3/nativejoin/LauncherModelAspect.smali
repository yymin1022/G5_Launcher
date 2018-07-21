.class public Lcom/lge/launcher3/nativejoin/LauncherModelAspect;
.super Ljava/lang/Object;
.source "LauncherModelAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherModelAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    :try_start_0
    const-class v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$postClinit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$5$9f41a99eproceed(Ljava/lang/Integer;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$6$9e6fbcceproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$7$f35a6f6cproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$8$349b2a95proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$9$e073d67aproceed(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_lge_launcher3_nativejoin_LauncherModelAspect$isExistSprintInstaller(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->isExistSprintInstaller(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_android_launcher3_LauncherModel$removeWorkspaceEmptyScreenModel(Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_9

    .line 212
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->removeWorkspaceEmptyScreen()V

    .line 214
    :cond_9
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_LauncherModelAspect$com_android_launcher3_LauncherModel$removeWorkspaceEmptyScreenModel(Lcom/android/launcher3/LauncherModel;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->removeWorkspaceEmptyScreenModel()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    return-void
.end method

.method public static ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_lge_launcher3_nativejoin_LauncherModelAspect$isExistSprintInstaller(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->isExistSprintInstaller(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_lge_launcher3_nativejoin_LauncherModelAspect$isExistingPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->isExistingPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/LauncherModelAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_LauncherModelAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isExistSprintInstaller(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    const-string v0, "com.sprint.w.installer"

    .line 97
    const-string v3, "sprint.chameleon.mobile_id.enable"

    .line 98
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 99
    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 100
    invoke-static {p0, v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_lge_launcher3_nativejoin_LauncherModelAspect$isExistingPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 101
    if-nez v5, :cond_3e

    .line 102
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "updateChameleonPreference: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changed as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_3d
    return v0

    .line 106
    :cond_3e
    if-eqz v0, :cond_71

    .line 107
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 108
    if-nez v5, :cond_71

    .line 109
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    sget-object v2, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateChameleonPreference: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changed as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 111
    goto :goto_3d

    .line 116
    :cond_71
    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateChameleonPreference: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", not changed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 117
    goto :goto_3d
.end method

.method private static isExistingPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_21

    .line 126
    const/4 v0, 0x1

    .line 127
    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_21} :catch_22

    .line 133
    :cond_21
    :goto_21
    return v0

    .line 130
    :catch_22
    move-exception v1

    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_nativejoin_LauncherModelAspect$1$1291033d(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "context,intent"
        value = "(execution(public void LauncherModel.onReceive(Context, Intent)) && args(context, intent))"
    .end annotation

    .prologue
    .line 37
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_CUSTOMCONTENT:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v2, p1}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 41
    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    const-string v2, "IntentConst.Config.ACTION_RELOAD_CUSTOMCONTENT is received"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_26

    .line 44
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->invalidateHasCustomContentToLeft()V

    .line 57
    :cond_26
    :goto_26
    return-void

    .line 46
    :cond_27
    const-string v2, "com.lge.launcher2.ADD_WIDGET_IN_NEWPAGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 47
    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    const-string v2, "com.lge.launcher2.ADD_WIDGET_IN_NEWPAGE is received"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_26

    .line 50
    invoke-interface {v0, p2}, Lcom/android/launcher3/LauncherModel$Callbacks;->addWidgetInNewPage(Landroid/content/Intent;)V

    goto :goto_26

    .line 52
    :cond_40
    const-string v2, "com.lge.launcher2.LLK_RESTORE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 53
    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    const-string v2, "com.lge.launcher2.LLK_RESTORE is received"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->deleteDatabase()V

    .line 55
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_26
.end method

.method public ajc$after$com_lge_launcher3_nativejoin_LauncherModelAspect$4$7f7099be(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "context,screens"
        value = "(execution(public void LauncherModel.updateWorkspaceScreenOrder(Context, ArrayList<(Long)>)) && args(context, screens))"
    .end annotation

    .prologue
    .line 78
    invoke-static {p2}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$updateMaxScreenId(Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$5$9f41a99e(Ljava/lang/Integer;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "synchronousBindPage,loadFlags,ajc$aroundClosure"
        value = "(execution(public void LauncherModel.startLoader(..)) && args(synchronousBindPage, loadFlags))"
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startLoader("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_54

    .line 86
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 87
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    .line 88
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->ajc$get$mApp(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_lge_launcher3_nativejoin_LauncherModelAspect$isExistSprintInstaller(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 89
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 92
    :cond_54
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$5$9f41a99eproceed(Ljava/lang/Integer;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 93
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$6$9e6fbcce(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void LauncherModel.forceReload())"
    .end annotation

    .prologue
    .line 137
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    .line 138
    new-instance v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect$LauncherModelAspect$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect$LauncherModelAspect$1;-><init>(Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Lcom/android/launcher3/LauncherModel;Lorg/aspectj/runtime/internal/AroundClosure;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_android_launcher3_LauncherModel$runOnMainThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$7$f35a6f6c(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public void PackageUpdatedTask.run())"
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 150
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    .line 152
    sget-object v1, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    const-string v2, "PackageUpdatedTask.run() : Op{%s}, Package{%s}, %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$get$mOp(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->getPackageUpdateOpToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$get$mPackages(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->ajc$get$mUser(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    aput-object v0, v3, v4

    .line 152
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    invoke-static {v0, v6}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_40

    .line 156
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    .line 157
    const-string v1, "Memory is full. so PackageUpdatedTask.run() is canceled."

    .line 156
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_3f
    return-void

    .line 161
    :cond_40
    invoke-static {p1}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$7$f35a6f6cproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_3f
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$8$349b2a95(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(private void LoaderTask.verifyApplications())"
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_10

    .line 190
    sget-object v0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->TAG:Ljava/lang/String;

    .line 191
    const-string v1, "Memory is full. so LoaderTask.verifyApplications() is canceled."

    .line 190
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_f
    return-void

    .line 195
    :cond_10
    invoke-static {p1}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$8$349b2a95proceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_f
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$9$e073d67a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            "Lorg/aspectj/lang/JoinPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,workspaceScreens,addedWorkspaceScreensFinal,spanX,spanY,ajc$aroundClosure"
        value = "(execution(* *LauncherModel.findSpaceForItem(Context, ArrayList<(Long)>, ArrayList<(Long)>, int, int)) && args(context, workspaceScreens, addedWorkspaceScreensFinal, spanX, spanY))"
    .end annotation

    .prologue
    .line 201
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_ADD_NEW_ITEMS_ON_LAST_PAGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 202
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$findLastSpaceForItem(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v0

    .line 205
    :goto_17
    return-object v0

    :cond_18
    invoke-static/range {p1 .. p6}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$9$e073d67aproceed(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;IILorg/aspectj/runtime/internal/AroundClosure;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_17
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_LauncherModelAspect$2$22416b1c(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "packageName,user"
        value = "(execution(public void LauncherModel.onPackageRemoved(String, UserHandleCompat)) && args(packageName, user))"
    .end annotation

    .prologue
    .line 61
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    .line 62
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$checkQMemoplusPanelPackabe(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public ajc$before$com_lge_launcher3_nativejoin_LauncherModelAspect$3$490627bc(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "packageName,user"
        value = "(execution(public void LauncherModel.onPackageAdded(String, UserHandleCompat)) && args(packageName, user))"
    .end annotation

    .prologue
    .line 67
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    .line 68
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$checkQMemoplusPanelPackabe(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    .line 69
    const-string v1, "com.lge.themepark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 70
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->ajc$get$mApp(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 71
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->ajc$get$mApp(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_DownloadTheme"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    :cond_24
    return-void
.end method

.method public getPackageUpdateOpToString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 170
    if-nez p1, :cond_5

    .line 171
    const-string v0, "OP_NONE"

    .line 183
    :goto_4
    return-object v0

    .line 172
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 173
    const-string v0, "OP_ADD"

    goto :goto_4

    .line 174
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 175
    const-string v0, "OP_UPDATE"

    goto :goto_4

    .line 176
    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    .line 177
    const-string v0, "OP_REMOVE"

    goto :goto_4

    .line 178
    :cond_17
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1d

    .line 179
    const-string v0, "OP_UNAVAILABLE"

    goto :goto_4

    .line 181
    :cond_1d
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
