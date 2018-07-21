.class public Lcom/lge/launcher3/homesettings/SmartBulletinAction;
.super Ljava/lang/Object;
.source "SmartBulletinAction.java"


# static fields
.field private static sLastAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sLastAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendDisabled(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 105
    const-string v0, "com.lge.launcher2.smartbulletin.action.DISABLED"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendSmartBulletinAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static sendEnabled(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 101
    const-string v0, "com.lge.launcher2.smartbulletin.action.ENABLED"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendSmartBulletinAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static sendPaused(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 114
    const-string v0, "com.lge.launcher2.smartbulletin.action.PAUSED"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendSmartBulletinAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private static sendProviderAction(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public static sendProviderEnabled(Landroid/content/Context;ZLandroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 131
    if-eqz p0, :cond_4

    if-nez p2, :cond_5

    .line 141
    :cond_4
    :goto_4
    return-void

    .line 134
    :cond_5
    const-string v0, "com.lge.launcher2.smartbulletin.action.provider.ENABLED"

    .line 135
    if-eqz p1, :cond_f

    .line 136
    const-string v0, "com.lge.launcher2.smartbulletin.action.provider.ENABLED"

    .line 140
    :goto_b
    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendProviderAction(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_4

    .line 138
    :cond_f
    const-string v0, "com.lge.launcher2.smartbulletin.action.provider.DISABLED"

    goto :goto_b
.end method

.method public static sendResumed(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 109
    const-string v0, "com.lge.launcher2.smartbulletin.action.RESUMED"

    invoke-static {p0, v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendSmartBulletinAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    const-string v0, "Home_ShowSmartBulletin"

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private static sendSmartBulletinAction(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 119
    sget-object v0, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sLastAction:Ljava/lang/String;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sLastAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 120
    const-string v0, "com.lge.launcher2.smartbulletin.action.RESUMED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 121
    const-string v0, "com.lge.launcher2.smartbulletin.action.PAUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 127
    :cond_1c
    :goto_1c
    return-void

    .line 124
    :cond_1d
    sput-object p1, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sLastAction:Ljava/lang/String;

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1c
.end method
