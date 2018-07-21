.class public Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "AlarmReceiver.java"


# instance fields
.field private alarmIntent:Landroid/app/PendingIntent;

.field private alarmMgr:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmMgr:Landroid/app/AlarmManager;

    if-nez v0, :cond_f

    .line 38
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmMgr:Landroid/app/AlarmManager;

    .line 40
    :cond_f
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_20

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmIntent:Landroid/app/PendingIntent;

    .line 44
    :cond_20
    return-void
.end method

.method static isPreferredHomePackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-static {p0}, Lcom/lge/launcher3/util/PackageUtils;->getDefaultHomeActivityResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 90
    if-nez v2, :cond_12

    .line 91
    const-string v1, "RUService"

    const-string v2, "isPreferredHomePackage() : resolveInfo is null"

    new-array v3, v0, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 117
    :cond_11
    :goto_11
    return v0

    .line 100
    :cond_12
    if-eqz v2, :cond_2a

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2a

    .line 101
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 102
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v0, v1

    .line 106
    goto :goto_11

    .line 107
    :cond_2a
    invoke-static {v2}, Lcom/lge/launcher3/util/PackageUtils;->isResolverActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 111
    goto :goto_11
.end method

.method private setAlarm(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 47
    const-string v0, "RUService"

    const-string v1, "setAlarm()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->init(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 52
    const/16 v0, 0xb

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 53
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 56
    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmIntent:Landroid/app/PendingIntent;

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmMgr:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    .line 68
    return-void
.end method


# virtual methods
.method public alarmSetOrCancel(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->isPreferredHomePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 81
    invoke-direct {p0, p1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->setAlarm(Landroid/content/Context;)V

    .line 86
    :goto_d
    return-void

    .line 83
    :cond_e
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->cancelAlarm(Landroid/content/Context;)V

    .line 84
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->startUninstallService(Landroid/content/Context;J)V

    goto :goto_d
.end method

.method public cancelAlarm(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 71
    const-string v0, "RUService"

    const-string v1, "cancelAlarm()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->init(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmMgr:Landroid/app/AlarmManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_19

    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 77
    :cond_19
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 25
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "RUService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive() intent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->startUninstallService(Landroid/content/Context;J)V

    .line 27
    return-void
.end method

.method startUninstallService(Landroid/content/Context;J)V
    .registers 8

    .prologue
    .line 30
    const-string v0, "RUService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startUninstallService() elapsedTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/launcher3/recentuninstall/service/UninstallAppsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "elapsed_time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    invoke-static {p1, v0}, Lcom/lge/launcher3/recentuninstall/service/AlarmReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    return-void
.end method
