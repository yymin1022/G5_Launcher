.class public Lcom/lge/launcher3/recentuninstall/RUProgressListManager;
.super Ljava/lang/Object;
.source "RUProgressListManager.java"

# interfaces
.implements Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sRUProgressManager:Lcom/lge/launcher3/recentuninstall/RUProgressListManager;


# instance fields
.field private mCallback:Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mUninstallProgressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->sRUProgressManager:Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mUninstallProgressList:Ljava/util/ArrayList;

    .line 23
    iput-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mCallback:Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;

    .line 40
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/recentuninstall/RUProgressListManager;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->sRUProgressManager:Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->sRUProgressManager:Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    .line 34
    :cond_b
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->sRUProgressManager:Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    return-object v0
.end method


# virtual methods
.method public addUninstallProgress(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mUninstallProgressList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    :goto_8
    return-void

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mUninstallProgressList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mUninstallProgressList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mUninstallProgressList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 98
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 107
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7

    .prologue
    .line 82
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->TAG:Ljava/lang/String;

    const-string v1, "onPackageRemoved() : packageName(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mUninstallProgressList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mCallback:Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;

    if-eqz v0, :cond_1f

    .line 87
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mCallback:Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;

    invoke-interface {v0, p1}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;->onPackageRemoved(Ljava/lang/String;)V

    .line 89
    :cond_1f
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)V
    .registers 4

    .prologue
    .line 117
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 136
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)V
    .registers 4

    .prologue
    .line 127
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 145
    return-void
.end method

.method public setPackageChangedCallback(Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->mCallback:Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;

    .line 49
    return-void
.end method
