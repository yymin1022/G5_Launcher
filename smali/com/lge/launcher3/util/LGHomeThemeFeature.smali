.class public Lcom/lge/launcher3/util/LGHomeThemeFeature;
.super Ljava/lang/Object;
.source "LGHomeThemeFeature.java"


# static fields
.field private static final SMARTWORLD_PACKAGENAME:Ljava/lang/String; = "com.lge.lgworld"

.field private static final SMARTWORLD_XMLPATH:Ljava/lang/String; = "/system/etc/com.lge.lgworld.xml"


# instance fields
.field private mUseTheme:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeThemeFeature;->mUseTheme:Z

    .line 23
    return-void
.end method

.method private checkBlackList(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->getConfigFilePath()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 136
    :goto_12
    return v0

    .line 116
    :cond_13
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->readConfigFile(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_5c

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 119
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v1

    .line 134
    goto :goto_12

    .line 119
    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_25

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_25

    .line 123
    const/4 v5, 0x0

    :try_start_4a
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_25

    .line 125
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.lge.lgworld"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_5e

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    .line 126
    goto :goto_12

    :cond_5c
    move v0, v1

    .line 136
    goto :goto_12

    :catch_5e
    move-exception v0

    goto :goto_25
.end method

.method private checkSmartWorldApp(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/com.lge.lgworld.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 151
    const-string v0, "com.lge.lgworld"

    invoke-static {v0, p1}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->isPackageExisted(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeThemeFeature;->mUseTheme:Z

    .line 160
    :goto_18
    return-void

    .line 156
    :cond_19
    invoke-direct {p0, p1}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->checkBlackList(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeThemeFeature;->mUseTheme:Z

    goto :goto_18

    .line 159
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeThemeFeature;->mUseTheme:Z

    goto :goto_18
.end method

.method private getConfigFilePath()Ljava/lang/String;
    .registers 7

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "/config/custom_apk_list.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_33

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_32
    return-object v0

    :cond_33
    const-string v0, ""

    goto :goto_32
.end method

.method private isAppliedDDTheme(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 164
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/R$string;->applied_theme_package_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_a} :catch_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_a} :catch_11

    move-result-object v1

    .line 165
    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 169
    :cond_e
    :goto_e
    return v0

    :catch_f
    move-exception v1

    goto :goto_e

    :catch_11
    move-exception v1

    goto :goto_e

    .line 167
    :catch_13
    move-exception v1

    goto :goto_e
.end method

.method private static isPackageExisted(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 32
    const/16 v1, 0x80

    :try_start_6
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    .line 36
    const/4 v0, 0x1

    :goto_a
    return v0

    .line 34
    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private makeApkPath(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/lge/launcher3/util/LGHomeThemeFeature$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/util/LGHomeThemeFeature$1;-><init>(Lcom/lge/launcher3/util/LGHomeThemeFeature;)V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v2, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 100
    invoke-virtual {v2, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_27
    if-lt v0, v3, :cond_2a

    .line 106
    :cond_29
    :goto_29
    return-object v1

    .line 100
    :cond_2a
    aget-object v4, v2, v0

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 103
    :cond_49
    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 104
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method private readConfigFile(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 57
    :try_start_6
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_63
    .catchall {:try_start_6 .. :try_end_b} :catchall_4f

    .line 58
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_66
    .catchall {:try_start_b .. :try_end_10} :catchall_5c

    .line 61
    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_44
    .catchall {:try_start_10 .. :try_end_13} :catchall_5e

    move-result-object v2

    if-nez v2, :cond_1d

    .line 76
    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 77
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_58

    .line 82
    :goto_1c
    return-object v0

    .line 62
    :cond_1d
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    .line 64
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 65
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->makeApkPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_43} :catch_44
    .catchall {:try_start_1d .. :try_end_43} :catchall_5e

    goto :goto_10

    .line 73
    :catch_44
    move-exception v2

    move-object v2, v3

    .line 76
    :goto_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 77
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4c} :catch_4d

    goto :goto_1c

    .line 79
    :catch_4d
    move-exception v1

    goto :goto_1c

    .line 74
    :catchall_4f
    move-exception v1

    move-object v3, v2

    .line 76
    :goto_51
    :try_start_51
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 77
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_5a

    .line 81
    throw v1

    .line 79
    :catch_58
    move-exception v1

    goto :goto_1c

    :catch_5a
    move-exception v1

    goto :goto_1c

    .line 74
    :catchall_5c
    move-exception v1

    goto :goto_51

    :catchall_5e
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_51

    .line 73
    :catch_63
    move-exception v1

    move-object v1, v2

    goto :goto_46

    :catch_66
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_46
.end method


# virtual methods
.method public checkSmartWorldAppSca(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeThemeFeature;->mUseTheme:Z

    if-nez v0, :cond_1a

    .line 141
    const-string v0, "SCA"

    const-string v1, "ro.build.target_region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 142
    const-string v0, "com.lge.lgworld"

    invoke-static {v0, p1}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->isPackageExisted(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeThemeFeature;->mUseTheme:Z

    .line 145
    :cond_1a
    return-void
.end method

.method public checkTheme(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->isAppliedDDTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 175
    invoke-direct {p0, p1}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->checkSmartWorldApp(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/util/LGHomeThemeFeature;->checkSmartWorldAppSca(Landroid/content/Context;)V

    .line 178
    :cond_c
    return-void
.end method

.method public useTheme()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeThemeFeature;->mUseTheme:Z

    return v0
.end method
