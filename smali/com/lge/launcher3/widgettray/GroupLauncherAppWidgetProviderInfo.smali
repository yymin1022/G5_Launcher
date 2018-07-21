.class public Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;
.super Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
.source "GroupLauncherAppWidgetProviderInfo.java"


# instance fields
.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 20
    iput-object p2, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->mGroupList:Ljava/util/List;

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->setInfo(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 22
    return-void
.end method

.method private setInfo(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 25
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v0, :cond_88

    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 26
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->minWidth:I

    .line 27
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->minHeight:I

    .line 28
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->minResizeWidth:I

    .line 29
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->minResizeHeight:I

    .line 30
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->updatePeriodMillis:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->updatePeriodMillis:I

    .line 31
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initialLayout:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->initialLayout:I

    .line 32
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initialKeyguardLayout:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 33
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v0, :cond_90

    move-object v0, v1

    :goto_29
    iput-object v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 35
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->icon:I

    .line 36
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->autoAdvanceViewId:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 37
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->resizeMode:I

    .line 38
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->widgetCategory:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->widgetCategory:I

    .line 39
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->mSpanX:I

    move-object v0, p1

    .line 42
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->mSpanY:I

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getMinSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->mMinSpanX:I

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->mMinSpanY:I

    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->mGroupList:Ljava/util/List;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_97

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    iget-object v1, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lge/launcher3/util/PackageUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 50
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->previewImage:I

    .line 55
    :goto_87
    return-void

    .line 25
    :cond_88
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v0

    goto/16 :goto_6

    .line 33
    :cond_90
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_29

    .line 52
    :cond_97
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    if-nez v0, :cond_a2

    :goto_9b
    iput-object v1, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 53
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->previewImage:I

    goto :goto_87

    .line 52
    :cond_a2
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9b
.end method


# virtual methods
.method public getGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->mGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    return-object v0
.end method
