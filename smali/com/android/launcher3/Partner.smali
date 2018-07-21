.class public Lcom/android/launcher3/Partner;
.super Ljava/lang/Object;
.source "Partner.java"


# static fields
.field private static final ACTION_PARTNER_CUSTOMIZATION:Ljava/lang/String; = "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

.field public static final RES_DEFAULT_LAYOUT:Ljava/lang/String; = "partner_default_layout"

.field public static final RES_DEFAULT_WALLPAPER_HIDDEN:Ljava/lang/String; = "default_wallpapper_hidden"

.field public static final RES_FOLDER:Ljava/lang/String; = "partner_folder"

.field public static final RES_GRID_ICON_SIZE_DP:Ljava/lang/String; = "grid_icon_size_dp"

.field public static final RES_GRID_NUM_COLUMNS:Ljava/lang/String; = "grid_num_columns"

.field public static final RES_GRID_NUM_ROWS:Ljava/lang/String; = "grid_num_rows"

.field public static final RES_REQUIRE_FIRST_RUN_FLOW:Ljava/lang/String; = "requires_first_run_flow"

.field public static final RES_SYSTEM_WALLPAPER_DIR:Ljava/lang/String; = "system_wallpaper_directory"

.field public static final RES_WALLPAPERS:Ljava/lang/String; = "partner_wallpapers"

.field static final TAG:Ljava/lang/String; = "Launcher.Partner"

.field private static sPartner:Lcom/android/launcher3/Partner;

.field private static sSearched:Z


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/Partner;->sSearched:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    .line 77
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;
    .registers 5

    .prologue
    .line 61
    const-class v2, Lcom/android/launcher3/Partner;

    monitor-enter v2

    :try_start_3
    sget-boolean v0, Lcom/android/launcher3/Partner;->sSearched:Z

    if-nez v0, :cond_21

    .line 62
    const-string v0, "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_1e

    .line 64
    new-instance v3, Lcom/android/launcher3/Partner;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v3, Lcom/android/launcher3/Partner;->sPartner:Lcom/android/launcher3/Partner;

    .line 66
    :cond_1e
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Partner;->sSearched:Z

    .line 68
    :cond_21
    sget-object v0, Lcom/android/launcher3/Partner;->sPartner:Lcom/android/launcher3/Partner;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v2

    return-object v0

    .line 61
    :catchall_25
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getforPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/Partner;
    .registers 4

    .prologue
    .line 1
    const-class v0, Lcom/android/launcher3/Partner;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1}, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$interMethod$com_lge_launcher3_util_CotaReloadAspect$com_android_launcher3_Partner$getforPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/Partner;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public applyInvariantDeviceProfileOverrides(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V
    .registers 10

    .prologue
    const/4 v1, -0x1

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    .line 123
    :try_start_3
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "grid_num_rows"

    .line 124
    const-string v4, "integer"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 125
    if-lez v2, :cond_6e

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 129
    :goto_1d
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "grid_num_columns"

    .line 130
    const-string v5, "integer"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 131
    if-lez v3, :cond_37

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 135
    :cond_37
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "grid_icon_size_dp"

    .line 136
    const-string v5, "dimen"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 137
    if-lez v3, :cond_55

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 139
    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F
    :try_end_54
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_54} :catch_65

    move-result v0

    .line 146
    :cond_55
    if-lez v2, :cond_5d

    if-lez v1, :cond_5d

    .line 147
    iput v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 148
    iput v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 151
    :cond_5d
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_64

    .line 152
    iput v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 154
    :cond_64
    :goto_64
    return-void

    .line 141
    :catch_65
    move-exception v0

    .line 142
    const-string v1, "Launcher.Partner"

    const-string v2, "Invalid Partner grid resource!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :cond_6e
    move v2, v1

    goto :goto_1d
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getWallpaperDirectory()Ljava/io/File;
    .registers 5

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "system_wallpaper_directory"

    const-string v2, "string"

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 108
    if-eqz v1, :cond_20

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public hasDefaultLayout()Z
    .registers 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "partner_default_layout"

    .line 89
    const-string v2, "xml"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 90
    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasFolder()Z
    .registers 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "partner_folder"

    .line 95
    const-string v2, "xml"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 96
    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hideDefaultWallpaper()Z
    .registers 5

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "default_wallpapper_hidden"

    const-string v2, "bool"

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 102
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public requiresFirstRunFlow()Z
    .registers 5

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "requires_first_run_flow"

    const-string v2, "bool"

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 114
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
