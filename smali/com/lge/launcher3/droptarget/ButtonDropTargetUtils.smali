.class public Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;
.super Ljava/lang/Object;
.source "ButtonDropTargetUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isShortcutWithApplicationType(Landroid/content/Context;Landroid/content/ComponentName;I)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    if-nez p1, :cond_6

    move v0, v1

    .line 112
    :goto_5
    return v0

    .line 86
    :cond_6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {p0, v0}, Lcom/lge/launcher3/util/PackageUtils;->isPackageOnSdcard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v0, v1

    .line 90
    goto :goto_5

    .line 94
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 96
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v0, 0x0

    .line 100
    invoke-virtual {v4, v5, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    :goto_39
    move v0, v2

    .line 112
    goto :goto_5

    .line 103
    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 104
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_48} :catch_4d

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    .line 105
    goto :goto_5

    .line 108
    :catch_4d
    move-exception v0

    .line 109
    sget-object v3, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->TAG:Ljava/lang/String;

    const-string v4, "isShortcutWithApplicationType() : SecurityException(%s)"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method public static isShortcutWithApplicationType(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p1, :cond_4

    .line 72
    :cond_3
    :goto_3
    return v0

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getItemType()I

    move-result v1

    if-nez v1, :cond_3

    .line 67
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/lge/launcher3/util/IntentUtils;->hasCategoryLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 69
    const/4 v0, 0x1

    goto :goto_3

    .line 72
    :cond_16
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 72
    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->isShortcutWithApplicationType(Landroid/content/Context;Landroid/content/ComponentName;I)Z

    move-result v0

    goto :goto_3
.end method

.method public static isShortcutWithApplicationType(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_8

    instance-of v2, p1, Lcom/android/launcher3/ShortcutInfo;

    if-nez v2, :cond_9

    .line 49
    :cond_8
    :goto_8
    return v0

    .line 35
    :cond_9
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 36
    iget v2, p1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v2, :cond_8

    .line 40
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/lge/launcher3/util/IntentUtils;->hasCategoryLauncher(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1b

    move v0, v1

    .line 42
    goto :goto_8

    .line 45
    :cond_1b
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$getDisabled(Lcom/android/launcher3/ShortcutInfo;)I

    move-result v3

    if-eq v3, v1, :cond_8

    .line 49
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 50
    iget-object v1, p1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 49
    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->isShortcutWithApplicationType(Landroid/content/Context;Landroid/content/ComponentName;I)Z

    move-result v0

    goto :goto_8
.end method
