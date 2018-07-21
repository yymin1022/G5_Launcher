.class public Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;
.super Ljava/lang/Object;
.source "SBAppWidgetProviderInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public mCompoentName:Landroid/content/ComponentName;

.field public mDatabaseId:I

.field public mIsEnabled:Z

.field public mPositionX:I

.field public mPostionY:I

.field public mSpanX:I

.field public mSpanY:I

.field public mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 20
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 28
    check-cast p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 30
    iget-boolean v2, p0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-nez v2, :cond_d

    .line 40
    :cond_c
    :goto_c
    return v0

    .line 32
    :cond_d
    iget-boolean v2, p0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-nez v2, :cond_17

    iget-boolean v2, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eqz v2, :cond_17

    move v0, v1

    .line 33
    goto :goto_c

    .line 35
    :cond_17
    iget v2, p0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    iget v3, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    if-le v2, v3, :cond_1f

    move v0, v1

    .line 36
    goto :goto_c

    .line 37
    :cond_1f
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    iget v2, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    if-lt v1, v2, :cond_c

    .line 40
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v0
.end method

.method public hasSameProvider(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)Z
    .registers 5

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v2, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 59
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_16

    move-result v0

    .line 64
    :goto_15
    return v0

    .line 61
    :catch_16
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_15
.end method

.method public isSameComponent(Landroid/content/ComponentName;)Z
    .registers 3

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 51
    :goto_8
    return v0

    .line 48
    :catch_9
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    const/4 v0, 0x0

    goto :goto_8
.end method
