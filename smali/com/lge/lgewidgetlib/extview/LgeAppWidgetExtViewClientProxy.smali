.class Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;
.super Ljava/lang/Object;
.source "LgeAppWidgetExtViewClientProxy.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;


# instance fields
.field mExtView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewHost;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    .line 13
    invoke-virtual {p0, p1}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->setExtViewHost(Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewHost;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getExtView()Landroid/view/View;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    return-object v0
.end method

.method public isWidgetUpdateSkippable()Z
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "isWidgetUpdateSkippable"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callBooleanMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyBindingStarted()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "notifyBindingStarted"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public notifyClickOutSide()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "notifyClickOutSide"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public notifyExtViewAvailable()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "notifyExtViewAvailable"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public notifyRequestExtViewException()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "notifyRequestExtViewException"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public notifyWidgetDeleted()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "notifyWidgetDeleted"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public notifyWidgetHostDestroyed()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "notifyWidgetHostDestroyed"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public notifyWidgetReset()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "notifyWidgetReset"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onExtViewModeCanceled()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "onExtViewModeCanceled"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onExtViewModeComplete()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "onExtViewModeComplete"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onWidgetModeComplete()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const-string v1, "onWidgetModeComplete"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setExtViewHost(Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewHost;)V
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->setExtViewHost(Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public setExtViewHost(Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setExtViewHost"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 28
    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_27

    move-result-object v0

    .line 30
    :try_start_14
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->mExtView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_1f} :catch_27

    .line 37
    return-void

    .line 31
    :catch_20
    move-exception v0

    .line 32
    :try_start_21
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_27} :catch_27

    .line 34
    :catch_27
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
