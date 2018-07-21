.class public Lcom/lge/launcher3/util/LGHomeFeature;
.super Ljava/lang/Object;
.source "LGHomeFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/util/LGHomeFeature$Config;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sLGHomeFeature:Lcom/lge/launcher3/util/LGHomeFeature;


# instance fields
.field private FEATURE_DEFAULT_THEME:[Ljava/lang/String;

.field private mThemeFeature:Lcom/lge/launcher3/util/LGHomeThemeFeature;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/launcher3/util/LGHomeFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature;->TAG:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature;->sLGHomeFeature:Lcom/lge/launcher3/util/LGHomeFeature;

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/util/LGHomeFeature;->sInitialized:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/lge/launcher3/util/LGHomeThemeFeature;

    invoke-direct {v0}, Lcom/lge/launcher3/util/LGHomeThemeFeature;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/util/LGHomeFeature;->mThemeFeature:Lcom/lge/launcher3/util/LGHomeThemeFeature;

    .line 117
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->values()[Lcom/lge/launcher3/util/LGHomeFeature$Config;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_11
    if-lt v0, v3, :cond_37

    .line 121
    invoke-static {p1}, Lcom/lge/launcher3/util/LGHomeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGHomeResources;

    move-result-object v0

    .line 122
    const-string v2, "config_feature_default_theme"

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/util/LGHomeResources;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/lge/launcher3/util/LGHomeFeature;->FEATURE_DEFAULT_THEME:[Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/lge/launcher3/util/LGHomeFeature;->FEATURE_DEFAULT_THEME:[Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/launcher3/util/LGHomeFeature;->FEATURE_DEFAULT_THEME:[Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/lge/launcher3/util/LGHomeFeature;->FEATURE_DEFAULT_THEME:[Ljava/lang/String;

    const-string v2, "com.lge.launcher2.theme.optimus"

    aput-object v2, v0, v1

    .line 128
    :cond_2e
    iget-object v0, p0, Lcom/lge/launcher3/util/LGHomeFeature;->mThemeFeature:Lcom/lge/launcher3/util/LGHomeThemeFeature;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->checkTheme(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGHomeFeature;->checkRecentlyUninstallImplementInFW()V

    .line 131
    return-void

    .line 117
    :cond_37
    aget-object v4, v2, v0

    .line 118
    invoke-virtual {v4, p1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->init(Landroid/content/Context;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/lge/launcher3/util/LGHomeFeature;->sInitialized:Z

    return v0
.end method

.method public static final destroy()V
    .registers 1

    .prologue
    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature;->sLGHomeFeature:Lcom/lge/launcher3/util/LGHomeFeature;

    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/util/LGHomeFeature;->sInitialized:Z

    .line 143
    return-void
.end method

.method public static final getFEATURE_DEFAULT_THEME()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 150
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature;->sLGHomeFeature:Lcom/lge/launcher3/util/LGHomeFeature;

    iget-object v0, v0, Lcom/lge/launcher3/util/LGHomeFeature;->FEATURE_DEFAULT_THEME:[Ljava/lang/String;

    return-object v0
.end method

.method public static final getInstance()Lcom/lge/launcher3/util/LGHomeFeature;
    .registers 1

    .prologue
    .line 146
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature;->sLGHomeFeature:Lcom/lge/launcher3/util/LGHomeFeature;

    return-object v0
.end method

.method public static final init(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature;->sLGHomeFeature:Lcom/lge/launcher3/util/LGHomeFeature;

    if-nez v0, :cond_14

    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_14

    .line 135
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/util/LGHomeFeature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature;->sLGHomeFeature:Lcom/lge/launcher3/util/LGHomeFeature;

    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/launcher3/util/LGHomeFeature;->sInitialized:Z

    .line 138
    :cond_14
    return-void
.end method


# virtual methods
.method public checkRecentlyUninstallImplementInFW()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    :try_start_1
    invoke-static {}, Lcom/lge/content/pm/PackageManagerEx;->getDefault()Lcom/lge/content/pm/PackageManagerEx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/content/pm/PackageManagerEx;->getDisabledByLGLauncherPackageList(I)[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_9} :catch_f

    .line 162
    :goto_9
    return-void

    .line 156
    :catch_a
    move-exception v0

    .line 157
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 159
    :catch_f
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature;->TAG:Ljava/lang/String;

    const-string v1, "Not implement PackageManagerEX in framework"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->setValue(Z)V

    goto :goto_9
.end method

.method public checkSmartWorldAppSca(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lge/launcher3/util/LGHomeFeature;->mThemeFeature:Lcom/lge/launcher3/util/LGHomeThemeFeature;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->checkSmartWorldAppSca(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method public useTheme()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/launcher3/util/LGHomeFeature;->mThemeFeature:Lcom/lge/launcher3/util/LGHomeThemeFeature;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->useTheme()Z

    move-result v0

    return v0
.end method
