.class public Lcom/lge/launcher3/homesettings/ActionManagerUserLog;
.super Ljava/lang/Object;
.source "ActionManagerUserLog.java"


# static fields
.field private static final ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 11
    new-instance v0, Landroid/content/ComponentName;

    .line 12
    const-string v1, "com.lge.mrg.service"

    const-string v2, "com.lge.mrg.service.internal.ActionManagerService"

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBoardDisabled(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    const-wide/32 v0, 0x1000002

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->sendMessage(Landroid/content/Context;J)V

    .line 20
    return-void
.end method

.method public static sendBoardEnabled(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 15
    const-wide/32 v0, 0x1000001

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->sendMessage(Landroid/content/Context;J)V

    .line 16
    return-void
.end method

.method public static sendBoardPauseAll(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 27
    const-wide/32 v0, 0x1000004

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->sendMessage(Landroid/content/Context;J)V

    .line 28
    return-void
.end method

.method public static sendBoardResumeAll(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    const-wide/32 v0, 0x1000003

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->sendMessage(Landroid/content/Context;J)V

    .line 24
    return-void
.end method

.method private static sendMessage(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v1, "action"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    const-string v1, "category"

    const-string v2, "com.lge.intent.category.gboard.*"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.mrg.service.intent.action.APPEND_USER_LOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    return-void
.end method
