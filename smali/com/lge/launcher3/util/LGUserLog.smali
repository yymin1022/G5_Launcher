.class public Lcom/lge/launcher3/util/LGUserLog;
.super Ljava/lang/Object;
.source "LGUserLog.java"


# static fields
.field private static final ACTION_APPEND_USER_LOG:Ljava/lang/String; = "com.lge.mlt.service.intent.action.APPEND_USER_LOG"

.field private static final DEBUG:Z = false

.field public static final FEATURENAME_ADDFOLDERITEMBYPLUS:Ljava/lang/String; = "Home_AddFolderItemByPlus"

.field public static final FEATURENAME_BACKUP:Ljava/lang/String; = "Home_Backup"

.field public static final FEATURENAME_CHANGEEFFECT:Ljava/lang/String; = "Home_ChangeEffect"

.field public static final FEATURENAME_CHANGEFOLDERCOLOR:Ljava/lang/String; = "Home_ChangeFolderColor"

.field public static final FEATURENAME_CHANGEGRID:Ljava/lang/String; = "Home_ChangeGrid"

.field public static final FEATURENAME_CHANGEHIDEAPPS:Ljava/lang/String; = "Home_ChangeHideApps"

.field public static final FEATURENAME_CHANGESORTAPPSBY:Ljava/lang/String; = "Home_ChangeSortAppsBy"

.field public static final FEATURENAME_CHANGETHEME:Ljava/lang/String; = "Home_ChangeTheme"

.field public static final FEATURENAME_CLEANVIEW:Ljava/lang/String; = "Home_CleanView"

.field public static final FEATURENAME_DOWNLOADTHEME:Ljava/lang/String; = "Home_DownloadTheme"

.field public static final FEATURENAME_ENABLEQMEMO:Ljava/lang/String; = "Home_EnableQMemo"

.field public static final FEATURENAME_ENABLESMARTBULLETIN:Ljava/lang/String; = "Home_EnableSmartBulletin"

.field public static final FEATURENAME_OVERVIEWMODE:Ljava/lang/String; = "Home_OverviewMode"

.field public static final FEATURENAME_REMOVE_ITEM_BY_TRASHCAN:Ljava/lang/String; = "Home_RemoveItemByTrashCan"

.field public static final FEATURENAME_REMOVE_ITEM_BY_UNINSTALLMODE:Ljava/lang/String; = "Home_RemoveItemByUninstallMode"

.field public static final FEATURENAME_RESIZEWIDGET:Ljava/lang/String; = "Home_ResizeWidget"

.field public static final FEATURENAME_RESTORE:Ljava/lang/String; = "Home_Restore"

.field public static final FEATURENAME_SHOWEFFECT:Ljava/lang/String; = "Home_ShowEffect"

.field public static final FEATURENAME_SHOWGRID:Ljava/lang/String; = "Home_ShowGrid"

.field public static final FEATURENAME_SHOWHIDEAPPS:Ljava/lang/String; = "Home_ShowHideApps"

.field public static final FEATURENAME_SHOWHOMESELECTOR:Ljava/lang/String; = "Home_ShowHomeSelector"

.field public static final FEATURENAME_SHOWRECENTLYUNINSTALLED:Ljava/lang/String; = "Home_ShowRecentlyUninstalled"

.field public static final FEATURENAME_SHOWSMARTBULLETIN:Ljava/lang/String; = "Home_ShowSmartBulletin"

.field public static final FEATURENAME_SHOWSORTAPPSBY:Ljava/lang/String; = "Home_ShowSortAppsBy"

.field public static final FEATURENAME_SHOWTHEME:Ljava/lang/String; = "Home_ShowTheme"

.field public static final FEATURENAME_SHOWWIDGETLIST:Ljava/lang/String; = "Home_ShowWidgetList"

.field public static final FEATURENAME_UNINSTALLMODE:Ljava/lang/String; = "Home_UninstallMode"

.field public static final FEATURENAME_WALLPAPERPICKER:Ljava/lang/String; = "Home_WallpapaerPicker"

.field private static final TAG:Ljava/lang/String; = "LGUserLog"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 102
    if-nez p0, :cond_3

    .line 115
    :goto_2
    return-void

    .line 106
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mlt.service.intent.action.APPEND_USER_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "app_name"

    const-string v2, "LGHome5"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "feature_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mlt.service.intent.action.APPEND_USER_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "app_name"

    const-string v2, "LGHome5"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "feature_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "extend_integer"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mlt.service.intent.action.APPEND_USER_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "app_name"

    const-string v2, "LGHome5"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "feature_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "extend_integer"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v1, "extend_text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mlt.service.intent.action.APPEND_USER_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "app_name"

    const-string v2, "LGHome5"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "feature_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "extend_text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
