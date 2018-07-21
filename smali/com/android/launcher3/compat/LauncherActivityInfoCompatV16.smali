.class public Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;
.super Lcom/android/launcher3/compat/LauncherActivityInfoCompat;
.source "LauncherActivityInfoCompatV16.java"


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 6

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 40
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mComponentName:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    .line 43
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 86
    :try_start_2
    iget-object v2, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_11

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_11} :catch_12

    .line 89
    :cond_11
    :goto_11
    return-wide v0

    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 60
    const/4 v0, 0x0

    .line 62
    if-eqz p1, :cond_19

    if-eqz v1, :cond_19

    .line 64
    :try_start_b
    iget-object v2, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v1, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_18} :catch_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_18} :catch_32

    move-result-object v0

    .line 70
    :cond_19
    :goto_19
    if-nez v0, :cond_23

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    :cond_23
    if-nez v0, :cond_2f

    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const/high16 v1, 0x10d0000

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    :cond_2f
    return-object v0

    :catch_30
    move-exception v1

    goto :goto_19

    :catch_32
    move-exception v1

    goto :goto_19
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method
