.class public Lcom/lge/launcher3/util/LGOptimusThemeResources;
.super Lcom/lge/launcher3/util/LGResourceManager;
.source "LGOptimusThemeResources.java"


# static fields
.field private static sLGOptimusThemeResource:Lcom/lge/launcher3/util/LGOptimusThemeResources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/LGOptimusThemeResources;->sLGOptimusThemeResource:Lcom/lge/launcher3/util/LGOptimusThemeResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/launcher3/util/LGResourceManager;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 22
    :try_start_7
    const-string v1, "com.lge.launcher2.theme.optimus"

    iput-object v1, p0, Lcom/lge/launcher3/util/LGOptimusThemeResources;->mPackageName:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/lge/launcher3/util/LGOptimusThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/util/LGOptimusThemeResources;->mResources:Landroid/content/res/Resources;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_13} :catch_14

    .line 27
    :goto_13
    return-void

    .line 25
    :catch_14
    move-exception v0

    const-string v0, "LGOptimusThemeResource"

    const-string v1, "Optimus Theme Resource Exception."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGOptimusThemeResources;
    .registers 2

    .prologue
    .line 13
    sget-object v0, Lcom/lge/launcher3/util/LGOptimusThemeResources;->sLGOptimusThemeResource:Lcom/lge/launcher3/util/LGOptimusThemeResources;

    if-nez v0, :cond_b

    .line 14
    new-instance v0, Lcom/lge/launcher3/util/LGOptimusThemeResources;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/util/LGOptimusThemeResources;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/util/LGOptimusThemeResources;->sLGOptimusThemeResource:Lcom/lge/launcher3/util/LGOptimusThemeResources;

    .line 16
    :cond_b
    sget-object v0, Lcom/lge/launcher3/util/LGOptimusThemeResources;->sLGOptimusThemeResource:Lcom/lge/launcher3/util/LGOptimusThemeResources;

    return-object v0
.end method
