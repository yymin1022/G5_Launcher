.class public interface abstract Lcom/android/launcher3/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract addWidgetInNewPage(Landroid/content/Intent;)V
.end method

.method public abstract bindAddScreens(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAllPackages(Lcom/android/launcher3/model/WidgetsModel;)V
.end method

.method public abstract bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsMoved(Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/FolderInfo;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindAppsUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindFolders(Lcom/android/launcher3/util/LongArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/FolderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindItems(Ljava/util/ArrayList;IIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;IIZ)V"
        }
    .end annotation
.end method

.method public abstract bindRestoreItemsChange(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindScreens(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindSearchablesChanged()V
.end method

.method public abstract bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindWidgetsRestored(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation
.end method

.method public abstract dumpLogsToLocalData()V
.end method

.method public abstract finishBindingItems()V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract invalidateHasCustomContentToLeft()V
.end method

.method public abstract isAllAppsButtonRank(I)Z
.end method

.method public abstract onPageBoundSynchronously(I)V
.end method

.method public abstract removeWorkspaceEmptyScreen()V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method
