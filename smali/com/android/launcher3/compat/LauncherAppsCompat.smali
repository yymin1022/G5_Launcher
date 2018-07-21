.class public abstract Lcom/android/launcher3/compat/LauncherAppsCompat;
.super Ljava/lang/Object;
.source "LauncherAppsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field private static sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private static sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;
    .registers 4

    .prologue
    .line 60
    sget-object v1, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_3
    sget-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;

    if-nez v0, :cond_18

    .line 62
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 63
    new-instance v0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 68
    :cond_18
    :goto_18
    sget-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;

    monitor-exit v1

    return-object v0

    .line 65
    :cond_1c
    new-instance v0, Lcom/android/launcher3/compat/LauncherAppsCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;

    goto :goto_18

    .line 60
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method


# virtual methods
.method public abstract addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;
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
.end method

.method public abstract isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z
.end method

.method public isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 88
    :try_start_1
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_c

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_d

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 91
    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method public abstract isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z
.end method

.method public abstract isPackageSuspendedForProfile(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z
.end method

.method public abstract removeOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/compat/LauncherActivityInfoCompat;
.end method

.method public abstract showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
.end method

.method public abstract startActivityForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
.end method
