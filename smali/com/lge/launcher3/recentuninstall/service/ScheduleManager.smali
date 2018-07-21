.class public Lcom/lge/launcher3/recentuninstall/service/ScheduleManager;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleManager.java"


# instance fields
.field private alarm:Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    new-instance v0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;

    invoke-direct {v0}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/ScheduleManager;->alarm:Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;

    .line 12
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 17
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    if-nez p2, :cond_a

    .line 39
    :cond_9
    :goto_9
    return-void

    .line 21
    :cond_a
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    const-string v0, "RUService"

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScheduleManager onReceive() intent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.launcher3.intent.action.LAUNCHER_RESUMED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 29
    :cond_3e
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/ScheduleManager;->alarm:Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmSetOrCancel(Landroid/content/Context;)V

    goto :goto_9

    .line 30
    :cond_44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "com.lge.android.intent.action.PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    const-string v1, "intentFilter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 35
    if-eqz v0, :cond_9

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/ScheduleManager;->alarm:Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmSetOrCancel(Landroid/content/Context;)V

    goto :goto_9
.end method
