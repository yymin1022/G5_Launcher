.class public Lcom/lge/launcher3/util/VdfDataPopupAspect;
.super Ljava/lang/Object;
.source "VdfDataPopupAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final REQUEST_DATA_CONNECTION_DIALOG:I = 0x14

.field private static final REQUEST_DATA_CONNECTION_IN_ROAM_DIALOG:I = 0x15

.field private static final TAG:Ljava/lang/String; = "VdfDataPopupAspect"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/util/VdfDataPopupAspect;


# instance fields
.field private mPendingIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 19
    :goto_3
    return-void

    .line 14
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_util_VdfDataPopupAspect$1$370dac9cproceed(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final ajc$if$1$e4064402(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DATA_CONNECTION_DIALOG_VDF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    return v0
.end method

.method public static final ajc$if$2$e4064402(IILandroid/content/Intent;)Z
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DATA_CONNECTION_DIALOG_VDF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_util_VdfDataPopupAspect$com_lge_launcher3_util_VdfDataPopupAspect$mPendingIntent(Lcom/lge/launcher3/util/VdfDataPopupAspect;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->mPendingIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_util_VdfDataPopupAspect$com_lge_launcher3_util_VdfDataPopupAspect$mPendingIntent(Lcom/lge/launcher3/util/VdfDataPopupAspect;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->mPendingIntent:Landroid/content/Intent;

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_util_VdfDataPopupAspect$com_lge_launcher3_util_VdfDataPopupAspect$startDataConnectionDialogActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->startDataConnectionDialogActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/util/VdfDataPopupAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/util/VdfDataPopupAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/VdfDataPopupAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/util/VdfDataPopupAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/VdfDataPopupAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_util_VdfDataPopupAspect"

    sget-object v2, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/VdfDataPopupAspect;

    return-object v0
.end method

.method private static checkForDataInRoaming(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1}, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->isRoamingDataPopupRequired(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 98
    invoke-static {p0}, Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;->isDataInRoamingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 100
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    const-string v2, "com.lge.android.connectionmanager.widget"

    .line 102
    const-string v3, "com.lge.android.connectionmanager.widget.RoamingConnectionRequestDialogActivity"

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/16 v2, 0x15

    :try_start_1b
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 106
    const/4 v0, 0x1

    .line 111
    :cond_1f
    :goto_1f
    return v0

    .line 108
    :catch_20
    move-exception v1

    const-string v1, "VdfDataPopupAspect"

    const-string v2, "Connection Widget is not installed."

    new-array v3, v0, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_1f
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/util/VdfDataPopupAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static runActivityResultDataPopup(IILcom/android/launcher3/Launcher;Landroid/content/Intent;)V
    .registers 9

    .prologue
    const v4, 0x7f0f001e

    const/4 v3, 0x0

    .line 44
    const/16 v0, 0x14

    if-ne p0, v0, :cond_68

    .line 45
    const-string v0, "VdfDataPopupAspect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REQUEST_DATA_CONNECTION_DIALOG: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p3, :cond_2e

    .line 48
    invoke-static {p2, p3}, Lcom/lge/launcher3/util/PackageUtils;->getPackageName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {p2, v0}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->checkForDataInRoaming(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 53
    :cond_2b
    :try_start_2b
    invoke-virtual {p2, p3}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_2e} :catch_3f

    .line 87
    :cond_2e
    :goto_2e
    return-void

    .line 54
    :catch_2f
    move-exception v0

    .line 55
    invoke-static {p2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    const-string v1, "VdfDataPopupAspect"

    const-string v2, "VdfDataPopupAspect"

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2e

    .line 57
    :catch_3f
    move-exception v0

    .line 58
    invoke-static {p2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    const-string v1, "VdfDataPopupAspect"

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher does not have the permission to launch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 62
    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 66
    :cond_68
    const/16 v0, 0x15

    if-ne p0, v0, :cond_2e

    .line 71
    if-eqz p3, :cond_2e

    .line 73
    :try_start_6e
    invoke-virtual {p2, p3}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_71
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6e .. :try_end_71} :catch_72
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_71} :catch_82

    goto :goto_2e

    .line 74
    :catch_72
    move-exception v0

    .line 75
    invoke-static {p2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 76
    const-string v1, "VdfDataPopupAspect"

    const-string v2, "VdfDataPopupAspect"

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2e

    .line 77
    :catch_82
    move-exception v0

    .line 78
    invoke-static {p2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 79
    const-string v1, "VdfDataPopupAspect"

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher does not have the permission to launch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method private static startDataConnectionDialogActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 116
    const/high16 v2, 0x10000

    .line 115
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 117
    const/4 v1, 0x0

    .line 118
    if-eqz v2, :cond_1b

    .line 119
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 120
    const-string v3, "VdfDataPopupAspect"

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1b
    if-eqz v1, :cond_47

    invoke-static {p0}, Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;->getWifiConnectionState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 125
    invoke-static {p0}, Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;->isSimStateReady(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 127
    invoke-static {p0, v1}, Lcom/lge/launcher3/util/VdfDataPopupListMatcher;->isDataConnectionPopupRequired(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 128
    invoke-static {p0}, Lcom/lge/launcher3/util/VdfDataPopupConnectivityUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    const-string v2, "com.lge.android.connectionmanager.widget"

    .line 132
    const-string v3, "com.lge.android.connectionmanager.widget.ConnectionRequiredDialogActivity"

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const/16 v2, 0x14

    .line 135
    :try_start_43
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_46} :catch_48

    .line 146
    :cond_46
    :goto_46
    const/4 v0, 0x1

    .line 149
    :cond_47
    :goto_47
    return v0

    .line 138
    :catch_48
    move-exception v1

    const-string v1, "VdfDataPopupAspect"

    const-string v2, "Connection Widget is not installed."

    new-array v0, v0, [I

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_46

    .line 142
    :cond_53
    invoke-static {p0, v1}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->checkForDataInRoaming(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_47
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_util_VdfDataPopupAspect$2$bd420fb4(IILandroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "requestCode,resultCode,data"
        value = "(onActivityResult(int, int, Intent) && (args(requestCode, resultCode, data) && if(void java.lang.Object.if_())))"
    .end annotation

    .prologue
    .line 37
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 38
    iget-object v1, p0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->mPendingIntent:Landroid/content/Intent;

    invoke-static {p1, p2, v0, v1}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->runActivityResultDataPopup(IILcom/android/launcher3/Launcher;Landroid/content/Intent;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/util/VdfDataPopupAspect;->mPendingIntent:Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public ajc$around$com_lge_launcher3_util_VdfDataPopupAspect$1$370dac9c(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "v,intent,tag,ajc$aroundClosure"
        value = "(startActivity(View, Intent, Object) && (args(v, intent, tag) && if(void java.lang.Object.if_())))"
    .end annotation

    .prologue
    .line 26
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p2, p1, p3}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$inlineAccessMethod$com_lge_launcher3_util_VdfDataPopupAspect$com_lge_launcher3_util_VdfDataPopupAspect$startDataConnectionDialogActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27
    invoke-static {p0, p2}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$inlineAccessFieldSet$com_lge_launcher3_util_VdfDataPopupAspect$com_lge_launcher3_util_VdfDataPopupAspect$mPendingIntent(Lcom/lge/launcher3/util/VdfDataPopupAspect;Landroid/content/Intent;)V

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_10
    return v0

    :cond_11
    invoke-static {p1, p2, p3, p4}, Lcom/lge/launcher3/util/VdfDataPopupAspect;->ajc$around$com_lge_launcher3_util_VdfDataPopupAspect$1$370dac9cproceed(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_10
.end method

.method public synthetic ajc$pointcut$$onActivityResult$53d(IILandroid/content/Intent;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "requestCode,resultCode,data"
        value = "(execution(protected void onActivityResult(int, int, android.content.Intent)) && (args(requestCode, resultCode, data) && within(com.android.launcher3.Launcher)))"
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public synthetic ajc$pointcut$$startActivity$2ca(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "v,intent,tag"
        value = "(execution(private boolean startActivity(android.view.View, android.content.Intent, java.lang.Object)) && (args(v, intent, tag) && within(com.android.launcher3.Launcher)))"
    .end annotation

    .prologue
    .line 23
    return-void
.end method
