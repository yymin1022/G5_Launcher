.class public Lcom/lge/launcher3/util/LGHomeResources;
.super Lcom/lge/launcher3/util/LGResourceManager;
.source "LGHomeResources.java"


# static fields
.field private static sLGHomeResource:Lcom/lge/launcher3/util/LGHomeResources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/LGHomeResources;->sLGHomeResource:Lcom/lge/launcher3/util/LGHomeResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lge/launcher3/util/LGResourceManager;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 21
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/util/LGHomeResources;->mPackageName:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/lge/launcher3/util/LGHomeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/util/LGHomeResources;->mResources:Landroid/content/res/Resources;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_15} :catch_16

    .line 26
    :goto_15
    return-void

    .line 24
    :catch_16
    move-exception v0

    const-string v0, "LGHomeResource"

    const-string v1, "LGHome Resources Exception."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGHomeResources;
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/lge/launcher3/util/LGHomeResources;->sLGHomeResource:Lcom/lge/launcher3/util/LGHomeResources;

    if-nez v0, :cond_b

    .line 13
    new-instance v0, Lcom/lge/launcher3/util/LGHomeResources;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/util/LGHomeResources;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/util/LGHomeResources;->sLGHomeResource:Lcom/lge/launcher3/util/LGHomeResources;

    .line 15
    :cond_b
    sget-object v0, Lcom/lge/launcher3/util/LGHomeResources;->sLGHomeResource:Lcom/lge/launcher3/util/LGHomeResources;

    return-object v0
.end method
