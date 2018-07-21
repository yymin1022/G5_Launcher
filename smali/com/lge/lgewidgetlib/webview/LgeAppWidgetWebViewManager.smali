.class public Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;
.super Ljava/lang/Object;
.source "LgeAppWidgetWebViewManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 19
    iput-object p1, p0, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private findWebView(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->isWebView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->initWebView(Landroid/view/View;)V

    .line 41
    :cond_9
    return-void

    .line 33
    :cond_a
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 34
    check-cast p1, Landroid/view/ViewGroup;

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 36
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v1, :cond_9

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 38
    invoke-direct {p0, v2}, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->findWebView(Landroid/view/View;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method private initWebView(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 57
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initWebView"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_11} :catch_25

    move-result-object v0

    .line 61
    const/4 v1, 0x1

    :try_start_13
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1d} :catch_25

    .line 68
    :goto_1d
    return-void

    .line 62
    :catch_1e
    move-exception v0

    .line 63
    :try_start_1f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_25} :catch_25

    .line 65
    :catch_25
    move-exception v0

    goto :goto_1d
.end method

.method private isWebView(Landroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "initWebView"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_13} :catch_14

    .line 51
    :goto_13
    return v0

    .line 50
    :catch_14
    move-exception v0

    move v0, v1

    .line 51
    goto :goto_13
.end method


# virtual methods
.method public getWidgetView()Landroid/view/View;
    .registers 4

    .prologue
    .line 27
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    const-string v2, "mView"

    invoke-static {v0, v1, v2}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->getWidgetView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgewidgetlib/webview/LgeAppWidgetWebViewManager;->findWebView(Landroid/view/View;)V

    .line 24
    return-void
.end method
