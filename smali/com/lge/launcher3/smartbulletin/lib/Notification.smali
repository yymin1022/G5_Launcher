.class public Lcom/lge/launcher3/smartbulletin/lib/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# static fields
.field public static final SBNOTI_ADD_INTENT:Ljava/lang/String; = "com.lge.launcher2.smartbulletin.ADD_NOTIFICATION_ICON"

.field public static final SBNOTI_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field public static final SBNOTI_REMOVE_INTENT:Ljava/lang/String; = "com.lge.launcher2.smartbulletin.REMOVE_NOTIFICATION_ICON"

.field public static final SBNOTI_RESOURCE_URI:Ljava/lang/String; = "resource_uri"

.field public static final SBNOTI_TYPE:Ljava/lang/String; = "noti_type"

.field public static final SBNOTI_TYPE_ONCE:Ljava/lang/String; = "once"

.field public static final SBNOTI_TYPE_ONGOING:Ljava/lang/String; = "ongoing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateNotiIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Landroid/content/Intent;
    .registers 8

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "noti_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-static {p0, p3}, Lcom/lge/launcher3/smartbulletin/lib/Notification;->getResourceUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "resource_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "component_name"

    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method private static getResourceUri(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.resource://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_3a} :catch_3c

    move-result-object v0

    .line 77
    :goto_3b
    return-object v0

    .line 73
    :catch_3c
    move-exception v0

    .line 74
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 77
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public static sendAddOnceIntent(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5

    .prologue
    .line 27
    const-string v0, "com.lge.launcher2.smartbulletin.ADD_NOTIFICATION_ICON"

    const-string v1, "once"

    invoke-static {p0, v0, v1, p2, p1}, Lcom/lge/launcher3/smartbulletin/lib/Notification;->generateNotiIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public static sendAddOngoingIntent(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5

    .prologue
    .line 41
    const-string v0, "com.lge.launcher2.smartbulletin.ADD_NOTIFICATION_ICON"

    const-string v1, "ongoing"

    invoke-static {p0, v0, v1, p2, p1}, Lcom/lge/launcher3/smartbulletin/lib/Notification;->generateNotiIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public static sendRemoveOnceIntent(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5

    .prologue
    .line 34
    const-string v0, "com.lge.launcher2.smartbulletin.REMOVE_NOTIFICATION_ICON"

    const-string v1, "once"

    invoke-static {p0, v0, v1, p2, p1}, Lcom/lge/launcher3/smartbulletin/lib/Notification;->generateNotiIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public static sendRemoveOngoingIntent(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5

    .prologue
    .line 48
    const-string v0, "com.lge.launcher2.smartbulletin.REMOVE_NOTIFICATION_ICON"

    const-string v1, "ongoing"

    invoke-static {p0, v0, v1, p2, p1}, Lcom/lge/launcher3/smartbulletin/lib/Notification;->generateNotiIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
