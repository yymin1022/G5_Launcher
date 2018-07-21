.class public Lcom/android/launcher3/AppWidgetsRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetsRestoredReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetsRestoredReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static restoreAppWidgetIds(Landroid/content/Context;[I[I)V
    .registers 14

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    move v6, v7

    .line 45
    :goto_11
    array-length v1, p1

    if-lt v6, v1, :cond_39

    .line 80
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 82
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 83
    new-instance v1, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;

    invoke-direct {v1, v8, v0}, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;-><init>(Ljava/util/List;Landroid/appwidget/AppWidgetHost;)V

    .line 91
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v10, [Ljava/lang/Void;

    aput-object v5, v2, v7

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :cond_2f
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_38

    .line 96
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->reloadWorkspace()V

    .line 98
    :cond_38
    return-void

    .line 46
    :cond_39
    const-string v1, "AppWidgetsRestoredReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Widget state restore id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    aget v1, p2, v6

    invoke-virtual {v9, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v1

    if-eqz v1, :cond_ba

    move v1, v7

    .line 56
    :goto_68
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 57
    const-string v3, "appWidgetId"

    aget v4, p2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v3, "restored"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    new-array v4, v10, [Ljava/lang/String;

    aget v1, p1, v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    .line 62
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    const-string v3, "appWidgetId=? and (restored & 1) = 1"

    .line 62
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 64
    if-nez v1, :cond_b5

    .line 65
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 66
    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "appWidgetId"

    aput-object v3, v2, v7

    .line 67
    const-string v3, "appWidgetId=?"

    .line 65
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 69
    :try_start_a3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_b2

    .line 71
    aget v2, p2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_bc

    .line 74
    :cond_b2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_b5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_11

    .line 53
    :cond_ba
    const/4 v1, 0x2

    goto :goto_68

    .line 73
    :catchall_bc
    move-exception v0

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 75
    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 26
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 27
    const-string v0, "appWidgetOldIds"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 28
    const-string v1, "appWidgetIds"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 29
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_27

    .line 30
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/AppWidgetsRestoredReceiver;->restoreAppWidgetIds(Landroid/content/Context;[I[I)V

    .line 35
    :cond_26
    :goto_26
    return-void

    .line 32
    :cond_27
    const-string v0, "AppWidgetsRestoredReceiver"

    const-string v1, "Invalid host restored received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
