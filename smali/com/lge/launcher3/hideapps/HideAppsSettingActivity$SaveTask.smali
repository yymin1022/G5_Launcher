.class Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;
.super Landroid/os/AsyncTask;
.source "HideAppsSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;


# direct methods
.method private constructor <init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;)V
    .registers 3

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;-><init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v0, "HideApps"

    const-string v1, "Applying settings"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 143
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    invoke-static {v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->access$1(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v4

    .line 144
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 146
    invoke-static {v3}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->deleteAll(Landroid/content/Context;)V

    .line 147
    invoke-static {v3, v4}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->addItems(Landroid/content/Context;Ljava/util/List;)V

    .line 149
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_56

    .line 162
    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 163
    invoke-static {}, Lcom/lge/launcher3/hideapps/AppFilterImpl;->clearList()V

    .line 165
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_90

    .line 169
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 171
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    invoke-static {v0, v2}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->access$2(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;Z)V

    .line 172
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 149
    :cond_56
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 151
    iget-object v1, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 152
    iget-object v0, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 150
    invoke-static {v3, v1, v0}, Lcom/android/launcher3/LauncherModel;->deleteHideAppsFromDatabase(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6c
    :goto_6c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 155
    iget-wide v8, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_8e

    const/4 v1, 0x1

    .line 156
    :goto_81
    if-eqz v1, :cond_6c

    .line 157
    iget-wide v0, v0, Lcom/android/launcher3/ItemInfo;->container:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_8e
    move v1, v2

    .line 155
    goto :goto_81

    .line 165
    :cond_90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/android/launcher3/LauncherModel;->updateFolderItemsRankToBePacked(Landroid/content/Context;I)V

    goto :goto_37
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    invoke-virtual {v1}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
