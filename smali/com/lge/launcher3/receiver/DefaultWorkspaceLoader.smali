.class public Lcom/lge/launcher3/receiver/DefaultWorkspaceLoader;
.super Ljava/lang/Object;
.source "DefaultWorkspaceLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getID(Landroid/content/Context;Ljava/lang/String;)I
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 36
    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 38
    const/4 v0, 0x0

    .line 40
    array-length v5, v4

    move v2, v1

    :goto_13
    if-lt v2, v5, :cond_3f

    .line 56
    :goto_15
    if-eqz v0, :cond_90

    .line 57
    const-string v1, "DefaultWorkspaceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " loading"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_3d
    move v1, v0

    .line 60
    :goto_3e
    return v1

    .line 40
    :cond_3f
    aget-object v6, v4, v2

    .line 41
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 42
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6c

    .line 43
    const-string v2, "DefaultWorkspaceLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "It is incorrect :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [I

    invoke-static {v2, v4, v5}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_15

    .line 46
    :cond_6c
    const-string v6, "workspace"

    aget-object v8, v7, v1

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 47
    aget-object v0, v7, v10

    .line 40
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 49
    :cond_7b
    aget-object v6, v7, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->getCheckClass(Ljava/lang/String;)Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;

    move-result-object v6

    .line 50
    if-eqz v6, :cond_78

    aget-object v7, v7, v10

    invoke-interface {v6, p0, v7}, Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;->isMatching(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_78

    goto :goto_3e

    :cond_90
    move v0, v1

    goto :goto_3d
.end method

.method public static getIDFromCAList(Landroid/content/Context;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 16
    array-length v1, v3

    if-nez v1, :cond_17

    .line 17
    const-string v1, "LGDefaultWorkspace"

    const-string v2, "workspaceCa List is Empty"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_16
    return v0

    .line 21
    :cond_17
    invoke-static {p0}, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->init(Landroid/content/Context;)V

    .line 22
    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_1d
    if-lt v2, v4, :cond_2b

    .line 28
    :cond_1f
    if-nez v1, :cond_26

    .line 29
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;->ISLOADING:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$WorkspaceCAKey;

    invoke-static {p0, v0, v2, v0}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z

    .line 31
    :cond_26
    invoke-static {}, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->destory()V

    move v0, v1

    .line 32
    goto :goto_16

    .line 22
    :cond_2b
    aget-object v1, v3, v2

    .line 23
    invoke-static {p0, v1}, Lcom/lge/launcher3/receiver/DefaultWorkspaceLoader;->getID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 24
    if-nez v1, :cond_1f

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d
.end method
