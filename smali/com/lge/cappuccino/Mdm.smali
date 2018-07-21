.class public Lcom/lge/cappuccino/Mdm;
.super Ljava/lang/Object;
.source "Mdm.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mdm"

.field private static sMdm:Lcom/lge/cappuccino/IMdm;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x0

    sput-object v7, Lcom/lge/cappuccino/Mdm;->sMdm:Lcom/lge/cappuccino/IMdm;

    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.lge.mdm.jar"

    const-class v5, Lcom/lge/cappuccino/Mdm;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_10
    const-string v4, "com.lge.is.frameworks.ISInterfaceImpl"

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cappuccino/IMdm;

    sput-object v3, Lcom/lge/cappuccino/Mdm;->sMdm:Lcom/lge/cappuccino/IMdm;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v2

    const-string v4, "Mdm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library loading failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v7, Lcom/lge/cappuccino/Mdm;->sMdm:Lcom/lge/cappuccino/IMdm;

    goto :goto_1f
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/cappuccino/IMdm;
    .registers 1

    sget-object v0, Lcom/lge/cappuccino/Mdm;->sMdm:Lcom/lge/cappuccino/IMdm;

    return-object v0
.end method

.method public static isSupportMultiUser()Z
    .registers 1

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    return v0
.end method

.method public static isUseLGMDMLibrary(Landroid/content/ComponentName;I)Z
    .registers 16

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v9

    :cond_5
    const-string v11, "Mdm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isUseLGMDMLibrary] who: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", userHandle: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    if-eqz v5, :cond_4

    :try_start_31
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v11, :cond_4

    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    new-instance v6, Ljava/io/File;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_54} :catch_ac

    const/4 v11, 0x0

    :try_start_55
    invoke-virtual {v3, v6, v11}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v7, :cond_80

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_80

    const-string v11, "com.lge.mdm"

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_77

    const-string v11, "com.lge.is"

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_80

    :cond_77
    const-string v11, "Mdm"

    const-string v12, "uses LGMDM Lib req: true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    goto :goto_4

    :cond_80
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    const-string v11, "com.lge.mdm"

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_98

    const-string v11, "com.lge.is"

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_98
    const-string v11, "Mdm"

    const-string v12, "uses LGMDM Lib req: false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_55 .. :try_end_9f} :catch_a2
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_9f} :catch_ac

    move v9, v10

    goto/16 :goto_4

    :catch_a2
    move-exception v1

    :try_start_a3
    const-string v10, "Mdm"

    const-string v11, "fail packageParser.parseMonolithicPackage"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_aa} :catch_ac

    goto/16 :goto_4

    :catch_ac
    move-exception v1

    const-string v10, "Mdm"

    const-string v11, "fail isUseLGMDMLibrary"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method
