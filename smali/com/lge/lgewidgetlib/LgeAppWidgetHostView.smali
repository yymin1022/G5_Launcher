.class public Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LgeAppWidgetHostView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgeAppWidgetHostView"

.field static sInflaterFilter:Landroid/view/LayoutInflater$Filter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

.field private mExtViewHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

.field private mRemoteContextForCustomView:Landroid/content/Context;

.field private mWebViewManager:Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView$1;

    invoke-direct {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView$1;-><init>()V

    sput-object v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 49
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getRemoteContextForCustomView(Landroid/widget/RemoteViews;)Landroid/content/Context;
    .registers 6

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    const/4 v2, 0x3

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_e} :catch_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_59

    move-result-object v0

    .line 95
    :goto_f
    return-object v0

    .line 66
    :catch_10
    move-exception v0

    .line 69
    if-eqz p1, :cond_1d

    .line 70
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 74
    :goto_18
    if-nez v1, :cond_29

    .line 75
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_f

    .line 72
    :cond_1d
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_18

    .line 81
    :cond_29
    :try_start_29
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    const-string v2, "mUser"

    .line 80
    invoke-static {v0, p0, v2}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 82
    iget-object v2, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 83
    const/4 v3, 0x3

    .line 82
    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_39} :catch_3b

    move-result-object v0

    goto :goto_f

    .line 86
    :catch_3b
    move-exception v0

    .line 87
    const-string v0, "LgeAppWidgetHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_f

    .line 91
    :catch_59
    move-exception v0

    .line 93
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private initExtManager()V
    .registers 3

    .prologue
    .line 158
    new-instance v0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-direct {v0, p0, v1}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;-><init>(Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    .line 159
    const-string v0, "LgeAppWidgetHostView"

    const-string v1, "mExtViewHost created"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->updateExtViewList()Z

    move-result v0

    if-nez v0, :cond_23

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    .line 162
    const-string v0, "LgeAppWidgetHostView"

    const-string v1, "Cannot setExtViewHost, mExtViewHost --> null"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_22
    return-void

    .line 164
    :cond_23
    invoke-direct {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->initWebViewManager()V

    goto :goto_22
.end method

.method private initWebViewManager()V
    .registers 3

    .prologue
    .line 153
    new-instance v0, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;-><init>(Landroid/content/Context;Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mWebViewManager:Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;

    .line 154
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mWebViewManager:Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->init()V

    .line 155
    return-void
.end method


# virtual methods
.method cancelWidgetExt()V
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isLgeWidget()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    if-eqz v0, :cond_17

    .line 258
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 259
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->cancelExtView()V

    .line 262
    :cond_17
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isLgeWidget()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 176
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mRemoteContextForCustomView:Landroid/content/Context;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mRemoteContextForCustomView:Landroid/content/Context;

    .line 178
    :goto_c
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    .line 180
    :goto_12
    return-object v0

    .line 177
    :cond_13
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_c

    .line 180
    :cond_16
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    goto :goto_12
.end method

.method protected getDefaultView()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 193
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 194
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isLgeWidget()Z

    move-result v0

    if-nez v0, :cond_12

    .line 195
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    .line 235
    :cond_11
    :goto_11
    return-object v0

    .line 198
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getRemoteContextForCustomView(Landroid/widget/RemoteViews;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mRemoteContextForCustomView:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mRemoteContextForCustomView:Landroid/content/Context;

    .line 200
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    check-cast v0, Landroid/view/LayoutInflater;

    .line 201
    iget-object v1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mRemoteContextForCustomView:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 202
    new-instance v0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;

    invoke-direct {v0}, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;-><init>()V

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 203
    sget-object v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 204
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 208
    const-string v4, "appWidgetCategory"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 209
    const-string v4, "appWidgetCategory"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 210
    const/4 v4, 0x2

    if-ne v1, v4, :cond_63

    .line 211
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 214
    if-nez v1, :cond_a0

    .line 217
    :cond_63
    :goto_63
    const/4 v1, 0x0

    invoke-virtual {v3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_67} :catch_ac

    move-result-object v0

    move-object v1, v2

    .line 225
    :goto_69
    if-eqz v1, :cond_91

    .line 226
    const-string v2, "LgeAppWidgetHostView"

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error inflating AppWidget "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_91
    if-nez v0, :cond_11

    .line 231
    const-string v0, "LgeAppWidgetHostView"

    const-string v1, "getDefaultView couldn\'t find any view, so inflating error"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    goto/16 :goto_11

    :cond_a0
    move v0, v1

    .line 214
    goto :goto_63

    .line 219
    :cond_a2
    :try_start_a2
    const-string v0, "LgeAppWidgetHostView"

    const-string v1, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_a9} :catch_ac

    move-object v1, v2

    move-object v0, v2

    .line 221
    goto :goto_69

    :catch_ac
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 222
    goto :goto_69
.end method

.method isLgeWidget()Z
    .registers 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 240
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 241
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    .line 243
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method isWeatherWidget()Z
    .registers 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 249
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 250
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->isLGEWeatherWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    .line 252
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method isWidgetExtEnabled()Z
    .registers 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isLgeWidget()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    if-eqz v0, :cond_11

    .line 266
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->isExpanded()Z

    move-result v0

    .line 268
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method isWidgetUpdateSkippable()Z
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    if-eqz v0, :cond_b

    .line 309
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->isWidgetUpdateSkippable()Z

    move-result v0

    .line 311
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method notifyBindingStarted()V
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    if-eqz v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->notifyBindingStarted()V

    .line 305
    :cond_9
    return-void
.end method

.method notifyExtViewAvailable()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->notifyExtViewAvailable()V

    .line 291
    :cond_9
    return-void
.end method

.method notifyWidgetDeleted()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->notifyWidgetDeleted()V

    .line 277
    :cond_9
    return-void
.end method

.method notifyWidgetHostDestroyed()V
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->notifyWidgetHostDestroyed()V

    .line 298
    :cond_9
    return-void
.end method

.method notifyWidgetReset()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHost:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->notifyWidgetReset()V

    .line 284
    :cond_9
    return-void
.end method

.method public setExtViewHostAdapter(Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mExtViewHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 58
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isWidgetUpdateSkippable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    :cond_6
    :goto_6
    return-void

    .line 106
    :cond_7
    if-eqz p1, :cond_b7

    .line 107
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isLgeWidget()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 109
    invoke-static {p1}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->getLgeRemoteViewsFromRemoteViews(Landroid/widget/RemoteViews;)Lcom/lge/lgewidgetlib/LgeRemoteViews;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getRemoteContextForCustomView(Landroid/widget/RemoteViews;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mRemoteContextForCustomView:Landroid/content/Context;

    .line 111
    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 113
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isWeatherWidget()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 114
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    .line 115
    const-string v1, "mView"

    .line 114
    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    if-eqz v0, :cond_38

    .line 117
    const-string v1, "LgeAppWidgetHostView"

    const-string v2, "It\'s weather widget, invalidate view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 122
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.concierge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    invoke-direct {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->initExtManager()V
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_38 .. :try_end_4d} :catch_4e

    goto :goto_6

    .line 125
    :catch_4e
    move-exception v0

    .line 126
    const-string v0, "LgeAppWidgetHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClassCastException package = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_67
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 130
    const-string v1, "LgeAppWidgetHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClassCastException version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "LgeAppWidgetHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClassCastException getAppWidgetInfo().provider = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_aa} :catch_ac

    goto/16 :goto_6

    .line 133
    :catch_ac
    move-exception v0

    .line 135
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    .line 139
    :cond_b2
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    goto/16 :goto_6

    .line 142
    :cond_b7
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isLgeWidget()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 143
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->cancelWidgetExt()V

    .line 145
    :cond_c0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 146
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->isLgeWidget()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyWidgetReset()V

    goto/16 :goto_6
.end method
