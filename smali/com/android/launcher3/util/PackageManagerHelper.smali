.class public Lcom/android/launcher3/util/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# static fields
.field private static final FLAG_SUSPENDED:I = 0x40000000


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 45
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_c

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_d

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 48
    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method public static isAppOnSdcard(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 36
    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {}, Lcom/android/launcher3/Utilities;->isNycOrAbove()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 66
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    .line 68
    :cond_f
    return v0
.end method

.method public static isAppSuspended(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 54
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_f

    invoke-static {v1}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_b} :catch_10

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    .line 57
    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method
