.class public Lcom/lge/mdm/util/LGMDMSystemPath;
.super Ljava/lang/Object;
.source "LGMDMSystemPath.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMSystemPath"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSystemPath(Landroid/content/pm/ApplicationInfo;)Z
    .registers 8
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v6, 0x0

    .line 13
    if-eqz p0, :cond_7

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 14
    :cond_7
    return v6

    .line 13
    :cond_8
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 16
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v2, "sourceApk":Ljava/io/File;
    :try_start_13
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "canonicalPath":Ljava/lang/String;
    const-string/jumbo v3, "LGMDMSystemPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isSystemPath]canonical path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    if-nez v0, :cond_34

    .line 21
    return v6

    .line 24
    :cond_34
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/system/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 26
    const-string/jumbo v4, "/data/preload/"

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 24
    if-eqz v3, :cond_7c

    .line 27
    :cond_54
    const-string/jumbo v3, "LGMDMSystemPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isSystemPath] in system path app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_70} :catch_72

    .line 28
    const/4 v3, 0x1

    return v3

    .line 30
    .end local v0    # "canonicalPath":Ljava/lang/String;
    :catch_72
    move-exception v1

    .line 31
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "LGMDMSystemPath"

    const-string/jumbo v4, "[isSystemPath] File not found"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7c
    return v6
.end method
