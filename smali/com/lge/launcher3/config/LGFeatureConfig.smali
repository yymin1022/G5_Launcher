.class public Lcom/lge/launcher3/config/LGFeatureConfig;
.super Ljava/lang/Object;
.source "LGFeatureConfig.java"


# static fields
.field public static final FEATURE_COUNTRY:Ljava/lang/String;

.field public static final FEATURE_ENABLE_LGLOG:Z

.field public static final FEATURE_OPERATOR:Ljava/lang/String;

.field public static sDebugLauncherModel:Z

.field public static sDebugMemoryTracking:Z

.field public static sDebugOccupiedCell:Z

.field public static sDebugPorfileStatup:Z

.field public static sDebugWidgetSize:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v0, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_ENABLE_LGLOG:Z

    .line 22
    sput-boolean v1, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugWidgetSize:Z

    .line 24
    sput-boolean v1, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugLauncherModel:Z

    .line 26
    sput-boolean v1, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugMemoryTracking:Z

    .line 28
    sput-boolean v1, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugPorfileStatup:Z

    .line 30
    sput-boolean v1, Lcom/lge/launcher3/config/LGFeatureConfig;->sDebugOccupiedCell:Z

    .line 33
    const-string v0, ""

    .line 35
    :try_start_1a
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1a .. :try_end_1c} :catch_27

    .line 39
    :goto_1c
    sput-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    .line 41
    const-string v0, ""

    .line 43
    :try_start_20
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->COUNTRY:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_20 .. :try_end_22} :catch_30

    .line 47
    :goto_22
    sput-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_COUNTRY:Ljava/lang/String;

    .line 48
    return-void

    .line 16
    :cond_25
    const/4 v0, 0x1

    goto :goto_c

    .line 37
    :catch_27
    move-exception v1

    const-string v1, "LGFeatureConfig"

    const-string v2, "LG lib not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 45
    :catch_30
    move-exception v1

    const-string v1, "LGFeatureConfig"

    const-string v2, "LG lib not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFolderPhone(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 53
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 55
    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
