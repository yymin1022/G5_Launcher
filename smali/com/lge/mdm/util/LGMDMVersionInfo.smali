.class public Lcom/lge/mdm/util/LGMDMVersionInfo;
.super Ljava/lang/Object;
.source "LGMDMVersionInfo.java"


# static fields
.field public static final LGMDM_NONE_TARGET_DEVICE:I = 0x0

.field public static final LGMDM_TARGET_DEVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LGMDMVersionInfo"

.field private static sVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string/jumbo v0, "5.1.0"

    sput-object v0, Lcom/lge/mdm/util/LGMDMVersionInfo;->sVersionName:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDeviceAPILevel()Z
    .registers 4

    .prologue
    const-class v2, Lcom/lge/mdm/util/LGMDMVersionInfo;

    monitor-enter v2

    .line 21
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/util/LGMDMVersionInfo;->isTargetOperator()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_18

    const/4 v0, 0x1

    .line 22
    .local v0, "isAllFeature":Z
    :goto_b
    if-nez v0, :cond_16

    .line 23
    const-string/jumbo v1, "LGMDMVersionInfo"

    const-string/jumbo v3, "EAS ONLY mode, this function can not be used"

    invoke-static {v1, v3}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    :cond_16
    monitor-exit v2

    .line 25
    return v0

    .line 21
    .end local v0    # "isAllFeature":Z
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "isAllFeature":Z
    goto :goto_b

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getMDMVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/lge/mdm/util/LGMDMVersionInfo;->sVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getTargetOperator()I
    .registers 2

    .prologue
    const-class v0, Lcom/lge/mdm/util/LGMDMVersionInfo;

    monitor-enter v0

    .line 17
    :try_start_3
    invoke-static {}, Lcom/lge/mdm/util/LGMDMVersionInfo;->isTargetOperator()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isTargetOperator()I
    .registers 6

    .prologue
    .line 29
    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "mTargetCountry":Ljava/lang/String;
    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "mTargetOperator":Ljava/lang/String;
    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "mTargetDevice":Ljava/lang/String;
    const-string/jumbo v3, "JP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string/jumbo v3, "CN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 34
    const-string/jumbo v3, "awifi070u"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 35
    const/4 v3, 0x1

    return v3

    .line 37
    :cond_29
    const-string/jumbo v3, "LGMDMVersionInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 38
    const-string/jumbo v5, " is not MDM TARGET OPERATOR!!"

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v3, 0x0

    return v3
.end method
