.class public Lcom/lge/launcher3/homesettings/LGMDMUtils;
.super Ljava/lang/Object;
.source "LGMDMUtils.java"


# static fields
.field private static final ACTION_CHANGE_DEFAULT_LAUNCHER:Ljava/lang/String; = "com.lge.mdm.intent.action.CHANGE_DEFAULT_LAUNCHER"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/lge/launcher3/homesettings/LGMDMUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/homesettings/LGMDMUtils;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeHomeSelectorPreference(Landroid/preference/Preference;)V
    .registers 3

    .prologue
    .line 54
    if-nez p0, :cond_3

    .line 63
    :cond_2
    :goto_2
    return-void

    .line 57
    :cond_3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "5.2.0"

    invoke-static {}, Lcom/lge/launcher3/homesettings/LGMDMUtils;->getMDMVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 59
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getEnforceDefaultLauncher(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const v0, 0x7f0f0176

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public static getMDMVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getMDMVersion()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 70
    :goto_8
    return-object v0

    .line 68
    :catch_9
    move-exception v0

    .line 69
    sget-object v1, Lcom/lge/launcher3/homesettings/LGMDMUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, ""

    goto :goto_8
.end method

.method public static receiveLGMDMIntentAction(Landroid/content/Intent;)Z
    .registers 3

    .prologue
    .line 45
    if-eqz p0, :cond_10

    .line 46
    const-string v0, "com.lge.mdm.intent.action.CHANGE_DEFAULT_LAUNCHER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static registerLGMDMFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4

    .prologue
    .line 19
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 28
    :cond_4
    :goto_4
    return-void

    .line 22
    :cond_5
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    const-string v0, "5.2.0"

    invoke-static {}, Lcom/lge/launcher3/homesettings/LGMDMUtils;->getMDMVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 25
    const-string v1, "com.lge.mdm.intent.action.CHANGE_DEFAULT_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method

.method public static unregisterLGMDMFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 5

    .prologue
    .line 31
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 42
    :cond_4
    :goto_4
    return-void

    .line 34
    :cond_5
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    const-string v0, "5.2.0"

    invoke-static {}, Lcom/lge/launcher3/homesettings/LGMDMUtils;->getMDMVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 37
    :try_start_1b
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_4

    .line 38
    :catch_1f
    move-exception v0

    .line 39
    sget-object v1, Lcom/lge/launcher3/homesettings/LGMDMUtils;->TAG:Ljava/lang/String;

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
