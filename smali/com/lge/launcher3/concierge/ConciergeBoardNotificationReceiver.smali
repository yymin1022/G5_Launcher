.class public Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConciergeBoardNotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.lge.concierge.ACTION_GO_TO_CONCIERGE"

.field private static final CLASSNAME:Ljava/lang/String; = "com.lge.concierge.ConciergeWidgetProvider"

.field private static sNotiReceiver:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;


# instance fields
.field private mWorkspaceMove:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->mWorkspaceMove:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;

    .line 13
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;
    .registers 2

    .prologue
    .line 24
    const-class v1, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->sNotiReceiver:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;

    invoke-direct {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;-><init>()V

    sput-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->sNotiReceiver:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;

    .line 27
    :cond_e
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->sNotiReceiver:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isExistConciergeBoardScreenInDatabase(Landroid/content/Context;)I
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    const-string v1, "itemType=4 AND appWidgetProvider like \'%com.lge.concierge.ConciergeWidgetProvider%\'"

    .line 57
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "itemType=4 AND appWidgetProvider like \'%com.lge.concierge.ConciergeWidgetProvider%\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 59
    if-nez v1, :cond_16

    move v0, v6

    .line 82
    :cond_15
    :goto_15
    return v0

    .line 62
    :cond_16
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_21

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 64
    goto :goto_15

    .line 67
    :cond_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    const-string v2, "screen"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 71
    invoke-static {v0, v2}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->toScreenIndex(Landroid/content/ContentResolver;I)I

    move-result v0

    .line 72
    if-eq v0, v6, :cond_15

    .line 73
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_3f
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existQmemoPanelItemInDataBase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.concierge.ACTION_GO_TO_CONCIERGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public static toScreenIndex(Landroid/content/ContentResolver;I)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 86
    sget-object v1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 87
    const-string v5, "screenRank ASC"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 88
    if-nez v1, :cond_10

    .line 105
    :goto_f
    return v6

    .line 91
    :cond_10
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1a

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_f

    :cond_1a
    move v0, v6

    .line 97
    :cond_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_26

    .line 104
    :goto_21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 105
    goto :goto_f

    .line 98
    :cond_26
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    if-ne v2, p1, :cond_1b

    goto :goto_21
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 47
    invoke-static {}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addWorkSpaceMoveInterface(Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->mWorkspaceMove:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;

    .line 39
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 32
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->mWorkspaceMove:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;

    if-eqz v0, :cond_10

    .line 33
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->mWorkspaceMove:Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;

    invoke-interface {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;->gotoConcirergeBoard()V

    .line 35
    :cond_10
    return-void
.end method
