.class public Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;
.super Ljava/lang/Object;
.source "AppNotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;,
        Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;
    }
.end annotation


# static fields
.field private static final ACTION_TAG:Ljava/lang/String; = "action"

.field private static final APP_NOTIFIER_XML:I = 0x7f070009

.field private static final AU_SMS_CLASS_NAME:Ljava/lang/String; = "com.kddi.android.cmail.util.BadgeCountNotifier"

.field private static final AU_SMS_REPLACE_CLASS_NAME:Ljava/lang/String; = "com.kddi.android.cmail.ui.list.ThreadListActivity"

.field private static final COMPONENT_TAG:Ljava/lang/String; = "component"

.field private static final EXTRA_EMAIL_ACCOUNT_LIST:Ljava/lang/String; = "emailAcountList"

.field private static final EXTRA_EMAIL_CLASS_NAME:Ljava/lang/String; = "badge_count_class_name"

.field private static final EXTRA_MAIN_TAG:Ljava/lang/String; = "extra"

.field private static final NAME_TAG:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "AppNotifier.Manager"

.field private static final USAGE_TAG:Ljava/lang/String; = "usage"

.field private static final XMLNS:Ljava/lang/String; = "com.lge.launcher/xmlns"

.field private static sInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;


# instance fields
.field private mActionSpecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

.field private mIsSecretModeOn:Ljava/lang/Boolean;

.field private mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecretModeObserver:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mActionSpecs:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mComponents:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    invoke-direct {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mIsSecretModeOn:Ljava/lang/Boolean;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->initAppNotifierList()V

    .line 81
    invoke-direct {p0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->initSecretMode()V

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;Ljava/lang/Boolean;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mIsSecretModeOn:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->updateSecretModeIconforNumberBadge(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static destoryInstance()V
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->sInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    if-eqz v0, :cond_15

    .line 93
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->sInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    iget-object v0, v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 94
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->sInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    iget-object v0, v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->sInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    .line 97
    :cond_15
    return-void
.end method

.method private getComponent(Ljava/util/Collection;Landroid/os/Bundle;Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p3}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->getComponents()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 276
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 307
    return-object v1

    .line 276
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;

    .line 277
    invoke-virtual {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;->getName()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;->getUsage()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v4, "component"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 280
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_d

    .line 282
    const-string v3, "com.kddi.android.cmail.util.BadgeCountNotifier"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 283
    const-string v0, "com.kddi.android.cmail.ui.list.ThreadListActivity"

    .line 285
    :cond_3a
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 287
    :cond_3e
    const-string v4, "package"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 288
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    if-eqz v3, :cond_d

    .line 291
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 292
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 297
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 298
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 299
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 301
    :cond_86
    const-string v0, "AppNotifier.Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "There is no application. package name : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method

.method private getCount(Ljava/util/Collection;Landroid/os/Bundle;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 271
    return v1

    .line 259
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;

    .line 260
    const-string v3, "main"

    invoke-virtual {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;->getUsage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 263
    invoke-virtual {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;->getName()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 266
    :try_start_27
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2e} :catch_31

    move-result v0

    move v1, v0

    .line 267
    goto :goto_6

    :catch_31
    move-exception v0

    .line 268
    const-string v5, "AppNotifier.Manager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " NumberFormatException "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;
    .registers 2

    .prologue
    .line 85
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->sInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->sInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    .line 88
    :cond_b
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->sInstance:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    return-object v0
.end method

.method private initAppNotifierList()V
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->parseXml()V

    .line 101
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mComponents:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->getAllName(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 102
    return-void
.end method

.method private initSecretMode()V
    .registers 5

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 424
    const v1, 0x7f0d0012

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 425
    if-nez v0, :cond_10

    .line 442
    :goto_f
    return-void

    .line 429
    :cond_10
    new-instance v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$1;-><init>(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mSecretModeObserver:Landroid/database/ContentObserver;

    .line 437
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    const-string v1, "secret_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 439
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mSecretModeObserver:Landroid/database/ContentObserver;

    .line 437
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 441
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierUtils;->isSecretModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mIsSecretModeOn:Ljava/lang/Boolean;

    goto :goto_f
.end method

.method private notifyCount(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 342
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 348
    :cond_18
    return-void

    .line 342
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;

    invoke-interface {v0, p2}, Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;->onUpdateAppNotifier(I)V

    goto :goto_12
.end method

.method private notifyGroupCount(Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 374
    return-void

    .line 361
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 362
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 363
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 364
    const/4 v1, 0x0

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_33

    .line 371
    invoke-direct {p0, v0, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyGroupCount(Ljava/util/ArrayList;I)V

    goto :goto_a

    .line 365
    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 366
    iget-object v5, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mComponents:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 367
    iget-object v5, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->loadAppNotifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 368
    add-int/2addr v1, v2

    move v2, v1

    goto :goto_29
.end method

.method private notifyGroupCount(Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 358
    :goto_10
    return-void

    .line 351
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;

    invoke-interface {v0, p2}, Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;->onUpdateAppNotifier(I)V

    goto :goto_10
.end method

.method private parseXml()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 115
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 118
    :cond_19
    :goto_19
    :try_start_19
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    .line 153
    :goto_20
    return-void

    .line 119
    :cond_21
    packed-switch v5, :pswitch_data_9e

    goto :goto_19

    .line 121
    :pswitch_25
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 122
    const-string v6, "action"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 123
    const-string v0, "com.lge.launcher/xmlns"

    const-string v5, "name"

    invoke-interface {v2, v0, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 124
    :cond_3a
    const-string v6, "extra"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 125
    const-string v5, "com.lge.launcher/xmlns"

    const-string v6, "name"

    invoke-interface {v2, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    const-string v6, "com.lge.launcher/xmlns"

    const-string v7, "usage"

    invoke-interface {v2, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    new-instance v7, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;

    invoke-direct {v7, v5, v6}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_5a} :catch_74

    goto :goto_19

    .line 150
    :catch_5b
    move-exception v0

    .line 151
    :goto_5c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 130
    :cond_60
    :try_start_60
    const-string v6, "component"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 131
    const-string v5, "com.lge.launcher/xmlns"

    const-string v6, "name"

    invoke-interface {v2, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 150
    :catch_74
    move-exception v0

    goto :goto_5c

    .line 136
    :pswitch_76
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 137
    const-string v6, "action"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 138
    new-instance v5, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;

    invoke-direct {v5, v0, v3, v4}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 139
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mActionSpecs:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 143
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V
    :try_end_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_9b} :catch_5b
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_9b} :catch_74

    move-object v0, v1

    .line 145
    goto/16 :goto_19

    .line 119
    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_25
        :pswitch_76
    .end packed-switch
.end method

.method private removeEmailBadge(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 205
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 224
    return-void

    .line 205
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 213
    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 217
    invoke-static {p1, v1, v6}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->saveAppNotifier(Landroid/content/Context;Ljava/lang/String;I)V

    .line 218
    invoke-direct {p0, v1, v6}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyGroupCount(Ljava/lang/String;I)V

    goto :goto_42

    .line 206
    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2, v6}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->saveAppNotifier(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyCount(Ljava/lang/String;I)V

    goto :goto_1c
.end method

.method private updateSecretModeIconforNumberBadge(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 445
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 446
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    .line 451
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 459
    return-void

    .line 446
    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 448
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 451
    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    const/4 v1, 0x0

    .line 453
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mIsSecretModeOn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_52

    .line 454
    invoke-static {p1, v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->loadAppNotifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 455
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyCount(Ljava/lang/String;I)V

    .line 457
    :cond_52
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyCount(Ljava/lang/String;I)V

    goto :goto_19
.end method


# virtual methods
.method public destroyAppNotifier()V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mSecretModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_f

    .line 318
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mSecretModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 320
    :cond_f
    return-void
.end method

.method public getCountDescription(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 377
    const/4 v0, 0x0

    .line 378
    if-ne p1, v2, :cond_f

    .line 379
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0f00f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_e
    :goto_e
    return-object v0

    .line 380
    :cond_f
    sget v1, Lcom/lge/launcher3/badge/appnotifier/AppNotifierConstant;->DEFAULT_MAX_NUMBER:I

    if-lt p1, v1, :cond_2b

    .line 382
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0f00fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 383
    sget v2, Lcom/lge/launcher3/badge/appnotifier/AppNotifierConstant;->DEFAULT_MAX_NUMBER:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 381
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 384
    :cond_2b
    if-le p1, v2, :cond_e

    sget v1, Lcom/lge/launcher3/badge/appnotifier/AppNotifierConstant;->DEFAULT_MAX_NUMBER:I

    if-ge p1, v1, :cond_e

    .line 385
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0f00f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 386
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 385
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method protected handleAppNotifierIntent(Landroid/content/Intent;)V
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mActionSpecs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 229
    const-string v0, "AppNotifier.Manager"

    const-string v1, "handleAppNotifierIntent() : mActionSpecs(%s)"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mActionSpecs:Ljava/util/HashMap;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_20
    return-void

    .line 233
    :cond_21
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mActionSpecs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;

    .line 234
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 235
    if-eqz v0, :cond_31

    if-nez v2, :cond_43

    .line 236
    :cond_31
    const-string v1, "AppNotifier.Manager"

    const-string v3, "handleAppNotifierIntent() : actionSpec(%s), extras(%s)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 240
    :cond_43
    invoke-virtual {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->getExtraSpecs()Ljava/util/Collection;

    move-result-object v3

    .line 241
    invoke-direct {p0, v3, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getCount(Ljava/util/Collection;Landroid/os/Bundle;)I

    move-result v4

    .line 242
    invoke-direct {p0, v3, v2, v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getComponent(Ljava/util/Collection;Landroid/os/Bundle;Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;)Ljava/util/Set;

    move-result-object v2

    .line 244
    const-string v0, "AppNotifier.Manager"

    const-string v3, "handleAppNotifierIntent() : action(%s), count(%d), components(%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 245
    aput-object v1, v5, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    .line 244
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 253
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    const-string v1, "jp.naver.line.android"

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->updateSecretModeIconforNumberBadge(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 247
    :cond_7e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v4}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->saveAppNotifier(Landroid/content/Context;Ljava/lang/String;I)V

    .line 249
    invoke-direct {p0, v0, v4}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyCount(Ljava/lang/String;I)V

    .line 250
    invoke-direct {p0, v0, v4}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyGroupCount(Ljava/lang/String;I)V

    goto :goto_6b
.end method

.method protected handleEmailAccountChangedIntent(Landroid/content/Intent;)V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    if-nez v0, :cond_18

    .line 158
    const-string v1, "AppNotifier.Manager"

    const-string v2, "handleEmailAccountChangedIntent() : extras(%s)"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_17
    :goto_17
    return-void

    .line 162
    :cond_18
    const-string v1, "badge_count_class_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    if-nez v2, :cond_30

    .line 164
    const-string v0, "AppNotifier.Manager"

    const-string v1, "handleEmailAccountChangedIntent() : classNames(%s)"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 168
    :cond_30
    const-string v1, "emailAcountList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 169
    if-nez v0, :cond_4d

    .line 170
    const-string v1, "AppNotifier.Manager"

    const-string v3, "handleEmailAccountChangedIntent() : accountList(%s)"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->removeEmailBadge(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_17

    .line 175
    :cond_4d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 188
    const-string v0, "AppNotifier.Manager"

    .line 189
    const-string v1, "handleEmailAccountChangedIntent() : classNames(%s), accountInfos(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 190
    aput-object v2, v4, v9

    aput-object v3, v4, v10

    .line 188
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_72
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 196
    iget-object v6, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->saveAppNotifier(Landroid/content/Context;Ljava/lang/String;I)V

    .line 197
    invoke-direct {p0, v2, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyCount(Ljava/lang/String;I)V

    .line 198
    invoke-direct {p0, v2, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyGroupCount(Ljava/lang/String;I)V

    .line 199
    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mComponents:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 176
    :cond_bc
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    aget-object v5, v1, v9

    .line 179
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    const/4 v6, 0x1

    :try_start_cf
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_d4} :catch_df

    move-result-object v0

    .line 185
    :goto_d5
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56

    .line 182
    :catch_df
    move-exception v1

    .line 183
    const-string v6, "AppNotifier.Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " NumberFormatException "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v9, [I

    invoke-static {v6, v1, v7}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_d5
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 311
    const-string v0, "AppNotifier.Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove data for package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->removeIconforNumberBadge(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->removeFolderforNumberBadge(Landroid/content/Context;ILjava/lang/String;)V

    .line 314
    return-void
.end method

.method public registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;Ljava/lang/String;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    if-eqz v0, :cond_15

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 325
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->loadAppNotifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 328
    invoke-direct {p0, p2, v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyCount(Ljava/lang/String;I)V

    .line 329
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    return-object v0
.end method

.method public registerAppNotifierGroup(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;"
        }
    .end annotation

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 394
    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 395
    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    .line 406
    invoke-direct {p0, p2, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyGroupCount(Ljava/util/ArrayList;I)V

    .line 407
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mDrawer:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    return-object v0

    .line 397
    :cond_1f
    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 399
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mComponents:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 402
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->loadAppNotifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 403
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_13
.end method

.method protected removeFolderforNumberBadge(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 481
    invoke-static {p1, p3}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->removeAppNotifier(Landroid/content/Context;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 491
    return-void

    .line 483
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 485
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 487
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyGroupCount(Ljava/lang/String;I)V

    goto :goto_24
.end method

.method protected removeIconforNumberBadge(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 462
    invoke-static {p1, p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierRecorder;->removeAppNotifier(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 466
    const/4 v0, 0x0

    .line 467
    if-eqz v1, :cond_72

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 468
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 470
    :goto_22
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 475
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_67

    .line 478
    return-void

    .line 470
    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 471
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 472
    :cond_5d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 475
    :cond_67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 476
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->notifyCount(Ljava/lang/String;I)V

    goto :goto_36

    :cond_72
    move-object v2, v0

    goto :goto_22
.end method

.method public unregisterAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierView;)V
    .registers 3

    .prologue
    .line 333
    if-nez p1, :cond_3

    .line 338
    :goto_2
    return-void

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public unregisterAppNotifierGroup(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;)V
    .registers 5

    .prologue
    .line 411
    if-nez p1, :cond_3

    .line 417
    :goto_2
    return-void

    .line 415
    :cond_3
    const-string v1, "AppNotifier.Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Unregister group: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->mRegisteredGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
