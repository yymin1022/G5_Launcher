.class public Lcom/lge/launcher3/theme/LGThemeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGThemeReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 16
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 17
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 18
    invoke-static {p1}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/lge/launcher3/theme/LGThemeChange;->getCurrentTheme()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 21
    if-eqz v0, :cond_3a

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 23
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 44
    :cond_39
    :goto_39
    return-void

    .line 27
    :cond_3a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v4, "com.lge.launcher2.theme"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 30
    const-string v4, "com.lge.themepark"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 31
    :cond_52
    const v4, 0x7f0f008b

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 32
    const/4 v5, 0x1

    .line 31
    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 35
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getFEATURE_DEFAULT_THEME()[Ljava/lang/String;

    move-result-object v2

    .line 36
    array-length v3, v2

    if-lez v3, :cond_39

    .line 37
    aget-object v3, v2, v6

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/theme/LGThemeChange;->readThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 38
    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/theme/LGThemeChange;->changeTheme(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->notifyCurrentThemePackageRemoved(Ljava/lang/String;)V

    goto :goto_39
.end method
