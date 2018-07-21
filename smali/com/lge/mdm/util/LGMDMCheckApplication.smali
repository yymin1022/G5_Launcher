.class public Lcom/lge/mdm/util/LGMDMCheckApplication;
.super Ljava/lang/Object;
.source "LGMDMCheckApplication.java"


# static fields
.field private static sTAG:Ljava/lang/String;

.field private static sinstance:Lcom/lge/mdm/util/LGMDMCheckApplication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string/jumbo v0, "LGMDMCheckApplication"

    sput-object v0, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/util/LGMDMCheckApplication;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/lge/mdm/util/LGMDMCheckApplication;->sinstance:Lcom/lge/mdm/util/LGMDMCheckApplication;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/lge/mdm/util/LGMDMCheckApplication;

    invoke-direct {v0}, Lcom/lge/mdm/util/LGMDMCheckApplication;-><init>()V

    sput-object v0, Lcom/lge/mdm/util/LGMDMCheckApplication;->sinstance:Lcom/lge/mdm/util/LGMDMCheckApplication;

    .line 45
    :cond_b
    sget-object v0, Lcom/lge/mdm/util/LGMDMCheckApplication;->sinstance:Lcom/lge/mdm/util/LGMDMCheckApplication;

    return-object v0
.end method


# virtual methods
.method public checkSpecificApplication(Ljava/lang/String;[Z)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mTotalSpecificApplicationList"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "count":I
    if-nez p2, :cond_5

    .line 121
    return v3

    .line 123
    :cond_5
    sget-object v4, Lcom/lge/mdm/util/SpecificPackageName;->SPECIFICPACKAGENAMES:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_9
    if-ge v2, v5, :cond_34

    aget-object v1, v4, v2

    .line 124
    .local v1, "specificPackageName":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/lge/mdm/util/SpecificPackageName;->isMatchSpecificApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 125
    aget-boolean v6, p2, v0

    if-nez v6, :cond_1a

    .line 126
    packed-switch v0, :pswitch_data_36

    .line 146
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 128
    :pswitch_1f
    const/16 v2, -0x6a

    return v2

    .line 130
    :pswitch_22
    const/16 v2, -0x6b

    return v2

    .line 132
    :pswitch_25
    const/16 v2, -0x6c

    return v2

    .line 134
    :pswitch_28
    const/16 v2, -0x70

    return v2

    .line 136
    :pswitch_2b
    const/16 v2, -0x71

    return v2

    .line 138
    :pswitch_2e
    const/16 v2, -0x72

    return v2

    .line 140
    :pswitch_31
    const/16 v2, -0x74

    return v2

    .line 148
    .end local v1    # "specificPackageName":Ljava/lang/String;
    :cond_34
    return v3

    .line 126
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
    .end packed-switch
.end method

.method public checkStartBrowserActivityLocked(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 14
    .param p1, "resContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 97
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v7, "http://www.openintents.org"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 99
    .local v6, "u":Landroid/net/Uri;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    const/high16 v7, 0x10000

    .line 101
    invoke-virtual {v2, v1, v7, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_66

    .line 105
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ri$iterator":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 106
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_63

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 108
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_38
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 109
    sget-object v7, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Disallow package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " By LGMDM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v7, -0x65

    return v7

    .line 106
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_63
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_38

    .line 114
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "ri$iterator":Ljava/util/Iterator;
    :cond_66
    const/4 v7, 0x0

    return v7
.end method

.method public checkUnsignedApplicationEnable(Ljava/lang/String;Ljava/util/List;I)I
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p2, "cnList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/16 v11, -0x67

    const/4 v10, 0x0

    .line 50
    sget-object v7, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[checkUnsignedApplicationEnable][packageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 51
    const-string/jumbo v9, "] userHandle:"

    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v3, "componentNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cn$iterator":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 54
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 58
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_44
    :try_start_44
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 59
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v6, :cond_c5

    .line 61
    const/16 v7, 0x80

    .line 60
    invoke-interface {v6, p1, v7, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 62
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v6, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "installerName":Ljava/lang/String;
    sget-object v7, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[checkUnsignedApplicationEnable]installerName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez v0, :cond_90

    .line 66
    sget-object v7, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ApplicationInfo of package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is NULL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v10

    .line 70
    :cond_90
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_c5

    .line 71
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c5

    .line 72
    if-nez v5, :cond_ad

    .line 73
    invoke-static {v0}, Lcom/lge/mdm/util/LGMDMSystemPath;->isSystemPath(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-nez v7, :cond_c5

    .line 74
    sget-object v7, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    .line 75
    const-string/jumbo v8, "[checkUnsignedApplicationEnable][return:UNSIGNEDAPP_NOT_START]"

    .line 74
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return v11

    .line 79
    :cond_ad
    invoke-static {v5}, Lcom/lge/mdm/util/SpecificPackageName;->isAllowedInstaller(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c5

    .line 80
    sget-object v7, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    .line 81
    const-string/jumbo v8, "[checkUnsignedApplicationEnable][return:UNSIGNEDAPP_NOT_START]"

    .line 80
    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_bb} :catch_bc

    .line 82
    return v11

    .line 87
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "installerName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    :catch_bc
    move-exception v4

    .line 88
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed talking with LGMDM device policy service"

    invoke-static {v7, v8, v4}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_c5
    sget-object v7, Lcom/lge/mdm/util/LGMDMCheckApplication;->sTAG:Ljava/lang/String;

    const-string/jumbo v8, "[checkUnsignedApplicationEnable][return:START_SUCCESS]"

    invoke-static {v7, v8}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return v10
.end method
