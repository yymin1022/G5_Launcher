.class public Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;
.super Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;
.source "SBProviderObserver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCategory:Landroid/view/ViewGroup;

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

.field private mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;-><init>(Landroid/os/Handler;)V

    .line 18
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    .line 19
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    .line 20
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mProviders:Ljava/util/List;

    .line 24
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    .line 25
    iput-object p2, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    .line 26
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->updatedSmartBulletinProvider(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->bindAllProviders(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->registerObserver(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private bindAllProviders(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 41
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mProviders:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 49
    return-void

    .line 42
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 43
    iget-object v2, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eqz v2, :cond_c

    .line 44
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v0, v3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->createHostView(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;Landroid/view/ViewGroup;)V

    goto :goto_c
.end method

.method private checkAndAddProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 95
    return-void

    .line 90
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 91
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->findIndexByInfo(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 92
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v0, v3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->createHostView(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;Landroid/view/ViewGroup;)V

    goto :goto_4
.end method

.method private checkAndBindProviders(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 65
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_b
    if-gez v1, :cond_19

    .line 71
    invoke-direct {p0, p1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->checkAndRemoveProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 72
    invoke-direct {p0, p1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->checkAndAddProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 73
    invoke-direct {p0, p1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->sortProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 74
    iput-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mProviders:Ljava/util/List;

    .line 75
    return-void

    .line 67
    :cond_19
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-nez v0, :cond_26

    .line 68
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_26
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_b
.end method

.method private checkAndRemoveProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-gez v1, :cond_c

    .line 86
    return-void

    .line 80
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 82
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, p2, v0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->contain(Ljava/util/List;Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 83
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 79
    :cond_27
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9
.end method

.method private findIndexByInfo(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I
    .registers 5

    .prologue
    .line 114
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_c

    .line 122
    const/4 v1, -0x1

    :cond_b
    return v1

    .line 115
    :cond_c
    iget-object v0, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 117
    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 118
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    if-nez v0, :cond_b

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private sortProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 111
    return-void

    .line 99
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 100
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->findIndexByInfo(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I

    move-result v2

    .line 101
    iget v3, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    if-eq v2, v3, :cond_4

    .line 102
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 104
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v4, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    if-ge v3, v4, :cond_34

    .line 105
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 107
    :cond_34
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    iget v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    invoke-virtual {v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;->onChange(Z)V

    .line 54
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChange() selfChange:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->checkAndBindProviders(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 59
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->refreshProviderLayout()V

    .line 61
    :cond_2b
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mCategory:Landroid/view/ViewGroup;

    .line 33
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->onDestroy()V

    .line 34
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    .line 35
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->unregisterObserver(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderObserver;->TAG:Ljava/lang/String;

    const-string v1, "onResume-end"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
