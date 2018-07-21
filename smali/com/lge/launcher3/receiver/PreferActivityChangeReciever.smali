.class public Lcom/lge/launcher3/receiver/PreferActivityChangeReciever;
.super Landroid/content/BroadcastReceiver;
.source "PreferActivityChangeReciever.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_4a

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 22
    if-eqz v4, :cond_4a

    .line 23
    const-string v0, "intentFilter"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 26
    if-eqz v0, :cond_72

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    move v1, v2

    .line 30
    :goto_28
    const-string v0, "packageName"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    if-eqz v1, :cond_4a

    if-eqz v0, :cond_4a

    .line 32
    const-string v1, "com.lge.launcher2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 33
    const-string v1, "com.lge.launcher2"

    invoke-static {p1, v1}, Lcom/lge/launcher3/util/PackageUtils;->setPrefHomeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-static {p1, v2}, Lcom/lge/launcher3/util/PackageUtils;->setItemsVisibleInSettingSearchForLGHome4(Landroid/content/Context;Z)V

    .line 35
    invoke-static {p1, v2, v3}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSettingSearchDB(Landroid/content/Context;ZZ)V

    .line 47
    :goto_47
    invoke-static {p1, v0}, Lcom/lge/launcher3/util/PackageUtils;->enableRecentUninstall(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    :cond_4a
    return-void

    .line 36
    :cond_4b
    const-string v1, "com.lge.launcher3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 37
    const-string v1, "com.lge.launcher3"

    invoke-static {p1, v1}, Lcom/lge/launcher3/util/PackageUtils;->setPrefHomeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {p1, v3}, Lcom/lge/launcher3/util/PackageUtils;->setItemsVisibleInSettingSearchForLGHome4(Landroid/content/Context;Z)V

    .line 39
    invoke-static {p1, v3, v2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSettingSearchDB(Landroid/content/Context;ZZ)V

    goto :goto_47

    .line 42
    :cond_5f
    const-string v1, "Issue"

    const-string v2, "3\'rd party Launcher!!!!!"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "com.lge.launcher3"

    invoke-static {p1, v1}, Lcom/lge/launcher3/util/PackageUtils;->setPrefHomeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, v3}, Lcom/lge/launcher3/util/PackageUtils;->setItemsVisibleInSettingSearchForLGHome4(Landroid/content/Context;Z)V

    .line 45
    invoke-static {p1, v3, v3}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSettingSearchDB(Landroid/content/Context;ZZ)V

    goto :goto_47

    :cond_72
    move v1, v3

    goto :goto_28
.end method
