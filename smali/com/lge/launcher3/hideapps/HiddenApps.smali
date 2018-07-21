.class public Lcom/lge/launcher3/hideapps/HiddenApps;
.super Ljava/lang/Object;
.source "HiddenApps.java"

# interfaces
.implements Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "HideApps.hidden"

.field private static sInstance:Lcom/lge/launcher3/hideapps/HiddenApps;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHiddenApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mHiddenApps:Ljava/util/HashSet;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/android/launcher3/LauncherSettings$HideApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/lge/launcher3/hideapps/HiddenApps$1;

    .line 38
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/lge/launcher3/hideapps/HiddenApps$1;-><init>(Lcom/lge/launcher3/hideapps/HiddenApps;Landroid/os/Handler;)V

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/HiddenApps;->loadHiddenApps()V

    .line 46
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/hideapps/HiddenApps;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/lge/launcher3/hideapps/HiddenApps;->sInstance:Lcom/lge/launcher3/hideapps/HiddenApps;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/lge/launcher3/hideapps/HiddenApps;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/hideapps/HiddenApps;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/hideapps/HiddenApps;->sInstance:Lcom/lge/launcher3/hideapps/HiddenApps;

    .line 53
    :cond_b
    sget-object v0, Lcom/lge/launcher3/hideapps/HiddenApps;->sInstance:Lcom/lge/launcher3/hideapps/HiddenApps;

    return-object v0
.end method


# virtual methods
.method public contains(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mHiddenApps:Ljava/util/HashSet;

    new-instance v1, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    invoke-direct {v1, p1, p2}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected loadHiddenApps()V
    .registers 8

    .prologue
    .line 57
    const-string v0, "HideApps.hidden"

    const-string v1, "Load hidden apps.."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mHiddenApps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 59
    invoke-static {}, Lcom/lge/launcher3/hideapps/AppFilterImpl;->clearList()V

    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    .line 72
    return-void

    .line 62
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 63
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->getAllItems(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 65
    new-instance v4, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    invoke-direct {v4, v1, v0}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 66
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mHiddenApps:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "HideApps.hidden"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " # "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 156
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 162
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/lge/launcher3/hideapps/HideAppsStorage;->removeItemForPkg(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 150
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)V
    .registers 4

    .prologue
    .line 167
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 177
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)V
    .registers 4

    .prologue
    .line 172
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 182
    return-void
.end method
