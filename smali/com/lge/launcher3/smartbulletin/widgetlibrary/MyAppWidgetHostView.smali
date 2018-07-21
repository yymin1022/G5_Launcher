.class public Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "MyAppWidgetHostView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreviousOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private applyNestedScroll(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->findChildListView(Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_a

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 60
    :cond_a
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->findChildGridView(Landroid/view/View;)Landroid/widget/GridView;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_13

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNestedScrollingEnabled(Z)V

    .line 64
    :cond_13
    return-void
.end method

.method private findChildGridView(Landroid/view/View;)Landroid/widget/GridView;
    .registers 6

    .prologue
    move-object v0, p1

    .line 83
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 84
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-lt v1, v2, :cond_d

    .line 95
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    move-object v0, p1

    .line 85
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    instance-of v3, v0, Landroid/widget/GridView;

    if-eqz v3, :cond_1b

    .line 87
    check-cast v0, Landroid/widget/GridView;

    goto :goto_c

    .line 88
    :cond_1b
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_28

    .line 89
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->findChildGridView(Landroid/view/View;)Landroid/widget/GridView;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_28

    .line 91
    check-cast v0, Landroid/widget/GridView;

    goto :goto_c

    .line 84
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method

.method private findChildListView(Landroid/view/View;)Landroid/widget/ListView;
    .registers 6

    .prologue
    move-object v0, p1

    .line 67
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-lt v1, v2, :cond_d

    .line 79
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    move-object v0, p1

    .line 69
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    instance-of v3, v0, Landroid/widget/ListView;

    if-eqz v3, :cond_1b

    .line 71
    check-cast v0, Landroid/widget/ListView;

    goto :goto_c

    .line 72
    :cond_1b
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_28

    .line 73
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->findChildListView(Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_28

    .line 75
    check-cast v0, Landroid/widget/ListView;

    goto :goto_c

    .line 68
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method


# virtual methods
.method public getDescendantFocusability()I
    .registers 2

    .prologue
    .line 26
    const/high16 v0, 0x60000

    return v0
.end method

.method isLgeWidget()Z
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 100
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 101
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    .line 103
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 32
    return-void
.end method

.method public orientationChangedSincedInflation()Z
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 109
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_12

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->mPreviousOrientation:I

    .line 37
    if-eqz p1, :cond_2d

    .line 38
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->isLgeWidget()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 40
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->getLgeRemoteViewsFromRemoteViews(Landroid/widget/RemoteViews;)Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;

    move-result-object v0

    .line 41
    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 49
    :goto_1d
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN_NESTED_SCROLL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 50
    invoke-direct {p0, p0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;->applyNestedScroll(Landroid/view/ViewGroup;)V

    .line 52
    :cond_28
    return-void

    .line 43
    :cond_29
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    goto :goto_1d

    .line 46
    :cond_2d
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    goto :goto_1d
.end method
