.class public Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;
.super Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;
.source "WidgetHelper.java"


# static fields
.field public static final REQUEST_BIND_APPWIDGET:I = 0x3eb

.field public static final REQUEST_CREATE_APPWIDGET:I = 0x3ea

.field public static final REQUEST_REMOVE_APPWIDGET:I = 0x3ec

.field public static final REQUEST_SELECT_APPWIDGET:I = 0x3e9

.field private static final TAG:Ljava/lang/String;

.field private static sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;


# instance fields
.field private mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mContext:Landroid/content/Context;

.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sCurOrder:I

.field private sProviderBgColor:[I

.field private sProviderTitleColor:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;-><init>(Landroid/os/Handler;)V

    .line 50
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sCurOrder:I

    .line 83
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    if-nez v0, :cond_34

    .line 85
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 86
    new-instance v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    const/16 v1, 0x401

    invoke-direct {v0, p1, v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    .line 89
    :try_start_25
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->startListening()V

    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    new-instance v1, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper$1;-><init>(Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;)V

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->setOnProvidersChangedListener(Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_34} :catch_58

    .line 101
    :cond_34
    :goto_34
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->registerObserver(Landroid/content/Context;)V

    .line 102
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sProviderBgColor:[I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sProviderTitleColor:[I

    .line 106
    return-void

    .line 97
    :catch_58
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_34
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addInstalledSmartBulletinProvider(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/16 v6, 0x100

    .line 397
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 398
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 400
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 407
    const v2, 0x7f0c003e

    .line 406
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 417
    return-void

    .line 400
    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 401
    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit16 v3, v3, 0x100

    if-eq v3, v6, :cond_f

    .line 402
    sget-object v3, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "awpInfo.widgetCategory = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", awpInfo.provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 408
    :cond_5a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 409
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    invoke-virtual {p0, v3, v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->contain(Ljava/util/List;Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 410
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getEnabledItemNum()I

    move-result v3

    if-lt v3, v2, :cond_73

    .line 411
    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->insertProvider(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Z)V

    goto :goto_24

    .line 413
    :cond_73
    const/4 v3, 0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->insertProvider(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Z)V

    goto :goto_24
.end method

.method private addInstalledSmartBulletinProviders(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->addInstalledSmartBulletinProvider(Landroid/content/Context;)V

    .line 393
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    .line 394
    return-void
.end method

.method private getColorFromPackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 307
    :try_start_1
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 308
    const-string v2, "color"

    invoke-virtual {v1, p2, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 309
    if-nez v2, :cond_14

    .line 317
    :goto_13
    return v0

    .line 312
    :cond_14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-result v0

    goto :goto_13

    .line 314
    :catch_19
    move-exception v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private getDefaultProviderInfo()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    .line 477
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 478
    invoke-virtual {v0, v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v2

    .line 480
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_32

    .line 486
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    .line 489
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/util/SBDefaultProviderList;->loadProviderListFromXml(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 491
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2b
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_61

    .line 506
    return-object v4

    .line 480
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 481
    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit16 v3, v3, 0x100

    if-eq v3, v6, :cond_e

    .line 482
    sget-object v3, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "awpInfo.widgetCategory = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", awpInfo.provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 492
    :cond_61
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;

    .line 493
    new-instance v6, Landroid/content/ComponentName;

    iget-object v1, v0, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;->mPakageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, v2, v6}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getProviderInfo(Ljava/util/List;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 496
    if-nez v1, :cond_7a

    .line 497
    invoke-direct {p0, v3, v6}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getProviderInfo(Ljava/util/List;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 500
    :cond_7a
    if-eqz v1, :cond_2b

    .line 501
    new-instance v6, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    invoke-direct {v6, v1}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 502
    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;->mEnable:Z

    iput-boolean v0, v6, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    .line 503
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b
.end method

.method private getEnabledItemNum()I
    .registers 5

    .prologue
    .line 420
    const/4 v1, 0x0

    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 430
    :goto_e
    return v0

    .line 422
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 423
    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_1c

    if-eqz v0, :cond_7

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 427
    :catch_1c
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 428
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    .line 63
    :cond_b
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    return-object v0
.end method

.method private getProviderBgColor(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I
    .registers 4

    .prologue
    .line 301
    iget-object v0, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "smartbulletin_provider_bg_color"

    .line 301
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getColorFromPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getProviderInfo(Ljava/util/List;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Landroid/appwidget/AppWidgetProviderInfo;"
        }
    .end annotation

    .prologue
    .line 511
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 516
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 511
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 512
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_b
.end method

.method private getProviderTitleColor(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I
    .registers 4

    .prologue
    .line 296
    iget-object v0, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "smartbulletin_provider_title_color"

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getColorFromPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private insertProvider(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Z)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->bindWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)I

    move-result v0

    .line 521
    if-eq v0, v1, :cond_a

    .line 522
    invoke-virtual {p0, p2, v0, p3, v1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->insertDatabase(Landroid/appwidget/AppWidgetProviderInfo;IZI)V

    .line 524
    :cond_a
    return-void
.end method

.method private isExcludeProviderList(Ljava/util/ArrayList;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;",
            ">;",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 388
    :goto_c
    return v0

    .line 377
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;

    .line 378
    iget-object v3, v0, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;->mPakageName:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_1d

    :cond_1b
    move v0, v1

    .line 379
    goto :goto_c

    .line 382
    :cond_1d
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;->mPakageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private loadDefaultProviderList()V
    .registers 5

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getDefaultProviderInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 474
    return-void

    .line 471
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 472
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    invoke-direct {p0, v2, v3, v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->insertProvider(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Z)V

    goto :goto_8
.end method

.method private loadProviderList(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_1c

    .line 341
    :try_start_3
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 342
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->onAppWidgetReset()V

    .line 343
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->loadDefaultProviderList()V

    .line 344
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    .line 340
    :cond_17
    monitor-exit v1

    .line 350
    :goto_18
    return-void

    .line 340
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 347
    :catch_1c
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_18
.end method

.method private makeChildView(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-direct {v1, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;-><init>(Landroid/content/Context;)V

    .line 269
    const v1, 0x7f040040

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 274
    invoke-direct {p0, p2}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getProviderBgColor(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I

    move-result v1

    .line 275
    invoke-direct {p0, p2}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getProviderTitleColor(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I

    move-result v2

    .line 277
    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    .line 278
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setCustomProviderBgColor(I)V

    .line 279
    invoke-virtual {v0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setCustomProviderTitleColor(I)V

    .line 290
    :cond_25
    :goto_25
    invoke-virtual {v0, p2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setProviderInfo(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)V

    .line 292
    return-object v0

    .line 281
    :cond_29
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sProviderBgColor:[I

    array-length v1, v1

    .line 282
    iget v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sCurOrder:I

    rem-int/2addr v2, v1

    .line 283
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sProviderBgColor:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setProviderBgColor(I)V

    .line 284
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sProviderTitleColor:[I

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setProviderTitleColor(I)V

    .line 285
    iget v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sCurOrder:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sCurOrder:I

    .line 286
    iget v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sCurOrder:I

    if-lt v2, v1, :cond_25

    .line 287
    iput v4, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sCurOrder:I

    goto :goto_25
.end method

.method private onAppWidgetReset()V
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    if-eqz v0, :cond_e

    .line 463
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->deleteHost()V

    .line 464
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->startListening()V

    .line 466
    :cond_e
    return-void
.end method

.method public static onDestroy()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 67
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    if-nez v0, :cond_d

    .line 68
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    const-string v1, "sWidgetHelper is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_c
    return-void

    .line 72
    :cond_d
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sWidgetHelper.mAppWidgetHost = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    iget-object v2, v2, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    if-eqz v0, :cond_32

    .line 74
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->stopListening()V

    .line 76
    :cond_32
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    iput-object v3, v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    .line 77
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->releaseContentObserver()Landroid/database/IContentObserver;

    .line 78
    sput-object v3, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->sWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    goto :goto_c
.end method

.method private removeExcludeProviders(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_38

    .line 360
    :try_start_3
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/util/SBExcludeProviderList;->loadExcludeProviderListFromXml(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 361
    if-eqz v3, :cond_14

    .line 362
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-gez v1, :cond_1c

    .line 359
    :cond_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_35

    .line 370
    :try_start_15
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1b} :catch_38

    .line 374
    :goto_1b
    return-void

    .line 363
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 364
    invoke-direct {p0, v3, v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->isExcludeProviderList(Ljava/util/ArrayList;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 365
    iget-object v4, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mDatabaseId:I

    invoke-static {v4, v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->deleteById(Landroid/content/Context;I)I

    .line 362
    :cond_31
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    .line 359
    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_35

    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_38} :catch_38

    .line 371
    :catch_38
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1b
.end method

.method private removeInvalidProviders(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 353
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->removeInvalidProviders(Landroid/content/Context;)V

    .line 354
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    .line 355
    return-void
.end method

.method private removeWidget(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_60

    .line 161
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 160
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_5d

    .line 170
    if-eqz p1, :cond_25

    :try_start_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 171
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0082

    .line 172
    const/4 v2, 0x0

    .line 171
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_25

    .line 174
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_2d} :catch_60

    .line 181
    :goto_2d
    return-void

    .line 161
    :cond_2e
    :try_start_2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 162
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mWidgetId:I

    if-ne v5, v6, :cond_3a

    .line 164
    iget-object v5, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    iget v6, v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mDatabaseId:I

    invoke-static {v5, v6}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->deleteById(Landroid/content/Context;I)I

    .line 165
    iget-object v5, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    iget v1, v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mWidgetId:I

    invoke-virtual {v5, v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_3a

    .line 160
    :catchall_5d
    move-exception v0

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_2e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v0
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_60} :catch_60

    .line 178
    :catch_60
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2d
.end method


# virtual methods
.method public bindWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)I
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 185
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    invoke-virtual {v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    .line 186
    iput-object p2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 189
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    .line 190
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v1

    .line 192
    if-eqz v1, :cond_40

    .line 193
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v1, :cond_23

    .line 194
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    .line 208
    :goto_22
    return v0

    .line 196
    :cond_23
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    check-cast p1, Landroid/app/Activity;

    const/16 v2, 0x3ea

    invoke-virtual {p1, v1, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_22

    .line 203
    :cond_40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v2, "appWidgetProvider"

    .line 206
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 205
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    check-cast p1, Landroid/app/Activity;

    const/16 v2, 0x3eb

    invoke-virtual {p1, v1, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_22
.end method

.method public contain(Ljava/util/List;Landroid/appwidget/AppWidgetProviderInfo;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 436
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 446
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 436
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 437
    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 438
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 439
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1b} :catch_20

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    const/4 v0, 0x1

    goto :goto_b

    .line 443
    :catch_20
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_a
.end method

.method public createHostView(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;Landroid/view/ViewGroup;)V
    .registers 10

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 230
    iget v0, p2, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mWidgetId:I

    .line 231
    iget-object v1, p2, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 233
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    .line 234
    invoke-virtual {v2, p1, v0, v1}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 233
    check-cast v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;

    .line 237
    if-eqz v0, :cond_51

    .line 238
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 239
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v2, v2}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->setPadding(IIII)V

    .line 242
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_52

    .line 243
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->makeChildView(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 255
    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 258
    const v2, 0x7f0e000e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 259
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {p3, v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 262
    new-instance v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 264
    :cond_51
    :goto_51
    return-void

    .line 245
    :cond_52
    iget v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7c

    .line 246
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "We can\'t support this widget(widgetCategory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 249
    :cond_7c
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "We can\'t handle this widget(info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object v2, p2, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method public getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    return-object v0
.end method

.method public getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method public initWidgetInfo()V
    .registers 2

    .prologue
    .line 527
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 530
    return-void
.end method

.method public insertDatabase(Landroid/appwidget/AppWidgetProviderInfo;IZI)V
    .registers 7

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->insertDatabase(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;IZI)V

    .line 215
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v0, p3, v1}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendProviderEnabled(Landroid/content/Context;ZLandroid/content/ComponentName;)V

    .line 216
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    .line 217
    return-void
.end method

.method public onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 109
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult() : resultCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-nez p3, :cond_39

    .line 113
    const/16 v0, 0x3ea

    if-ne p2, v0, :cond_38

    iget v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    if-eq v0, v3, :cond_38

    .line 114
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_38

    .line 115
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetHost:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    iget v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->deleteAppWidgetId(I)V

    .line 116
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->initWidgetInfo()V

    .line 156
    :cond_38
    :goto_38
    return-void

    .line 121
    :cond_39
    packed-switch p2, :pswitch_data_a4

    .line 153
    sget-object v0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult() : default requestCode("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 123
    :pswitch_51
    const-string v0, "widget_info"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 124
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->contain(Ljava/util/List;Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 125
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    const-string v1, "Widget already exists"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_38

    .line 128
    :cond_6e
    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->bindWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)I

    move-result v1

    .line 129
    if-eq v1, v3, :cond_38

    .line 130
    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->insertDatabase(Landroid/appwidget/AppWidgetProviderInfo;IZI)V

    .line 131
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->initWidgetInfo()V

    goto :goto_38

    .line 136
    :pswitch_7b
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 138
    if-eq v0, v3, :cond_38

    .line 139
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->insertDatabase(Landroid/appwidget/AppWidgetProviderInfo;IZI)V

    .line 140
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->initWidgetInfo()V

    goto :goto_38

    .line 145
    :pswitch_92
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mAppWidgetId:I

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->insertDatabase(Landroid/appwidget/AppWidgetProviderInfo;IZI)V

    goto :goto_38

    .line 149
    :pswitch_9a
    const-string v0, "remove_widgetId_list"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->removeWidget(Ljava/util/List;)V

    goto :goto_38

    .line 121
    :pswitch_data_a4
    .packed-switch 0x3e9
        :pswitch_51
        :pswitch_7b
        :pswitch_92
        :pswitch_9a
    .end packed-switch
.end method

.method public onChange(Z)V
    .registers 4

    .prologue
    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_10

    .line 453
    :try_start_3
    invoke-super {p0, p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;->onChange(Z)V

    .line 454
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->loadProviderList(Landroid/content/Context;)V

    .line 452
    monitor-exit v1

    .line 459
    :goto_c
    return-void

    .line 452
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    :try_start_f
    throw v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_10} :catch_10

    .line 456
    :catch_10
    move-exception v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_c
.end method

.method public updatedSmartBulletinProvider(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->mProviders:Ljava/util/List;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_26

    .line 324
    :try_start_3
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v0

    sget-object v2, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v0, v2, :cond_15

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.launcher3.smartbulletin.request.expand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    :cond_15
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->removeInvalidProviders(Landroid/content/Context;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->loadProviderList(Landroid/content/Context;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->addInstalledSmartBulletinProviders(Landroid/content/Context;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->removeExcludeProviders(Landroid/content/Context;)V

    .line 323
    monitor-exit v1

    .line 336
    :goto_22
    return-void

    .line 323
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    :try_start_25
    throw v0
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_26} :catch_26

    .line 333
    :catch_26
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_22
.end method
