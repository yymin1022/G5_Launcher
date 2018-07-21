.class public Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "MyAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProvidersChangedListener:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->mProvidersChangedListener:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;

    .line 16
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 5

    .prologue
    .line 21
    new-instance v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 6

    .prologue
    .line 25
    sget-object v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderChanged id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 27
    return-void
.end method

.method protected onProvidersChanged()V
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->TAG:Ljava/lang/String;

    const-string v1, "onProvidersChanged"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    .line 33
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->mProvidersChangedListener:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;

    if-eqz v0, :cond_13

    .line 34
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->mProvidersChangedListener:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;

    invoke-interface {v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;->onProvidersChanged()V

    .line 36
    :cond_13
    return-void
.end method

.method public setOnProvidersChangedListener(Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost;->mProvidersChangedListener:Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;

    .line 46
    return-void
.end method
