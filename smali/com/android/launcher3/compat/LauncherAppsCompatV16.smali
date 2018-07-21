.class public Lcom/android/launcher3/compat/LauncherAppsCompatV16;
.super Lcom/android/launcher3/compat/LauncherAppsCompat;
.source "LauncherAppsCompatV16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageMonitor:Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;-><init>(Lcom/android/launcher3/compat/LauncherAppsCompatV16;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    .line 56
    return-void
.end method

.method private registerForPackageIntents()V
    .registers 4

    .prologue
    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method private unregisterForPackageIntents()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method


# virtual methods
.method public declared-synchronized addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .registers 4

    .prologue
    .line 100
    monitor-enter p0

    if-eqz p1, :cond_1c

    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->registerForPackageIntents()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 106
    :cond_1c
    monitor-exit p0

    return-void

    .line 100
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 69
    return-object v1

    .line 66
    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 67
    new-instance v3, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;

    iget-object v4, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method declared-synchronized getCallbacks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->isEnabled()Z
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_12

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    .line 124
    :cond_11
    :goto_11
    return v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isPackageSuspendedForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 4

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized removeOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .registers 3

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->unregisterForPackageIntents()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 113
    :cond_11
    monitor-exit p0

    return-void

    .line 109
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;
    .registers 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_11

    .line 75
    new-instance v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;

    iget-object v2, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 77
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 93
    const-string v3, "package"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    const v0, 0x10808000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public startActivityForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 86
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method
