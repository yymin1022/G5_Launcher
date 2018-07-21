.class public Lcom/lge/lgewidgetlib/extview/NormalState;
.super Ljava/lang/Object;
.source "NormalState.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/ExtViewState;


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalState"


# instance fields
.field mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

.field mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

.field mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

.field mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;


# direct methods
.method public constructor <init>(Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewHandler;)V
    .registers 5

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    .line 18
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    .line 19
    iput-object p3, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 20
    iput-object p4, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public cancelExtView()V
    .registers 3

    .prologue
    .line 64
    const-string v0, "NormalState"

    const-string v1, "cancelExtView on NormalState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->onExtViewModeCanceled()V

    .line 66
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->cancelAnimation()V

    .line 67
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->transitionToNormalView()V

    .line 68
    return-void
.end method

.method public clientExpandAnimationFinished()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public clientRestoreAnimationFinished()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public isExtViewAvailable()Z
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->isExtViewAvailable()Z

    move-result v0

    return v0
.end method

.method public notifyExtViewAvailable()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->notifyExtViewAvailable()V

    .line 105
    return-void
.end method

.method public notifyStateChanged()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method public notifyWidgetDeleted()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->notifyWidgetDeleted()V

    .line 74
    return-void
.end method

.method public onCancelReqComplete()V
    .registers 3

    .prologue
    .line 38
    const-string v0, "NormalState"

    const-string v1, "onCancelReqComplete is not allowed on NormalState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onExpandReqComplete()V
    .registers 3

    .prologue
    .line 26
    const-string v0, "NormalState"

    const-string v1, "onExpandReqComplete is not allowed on NormalState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onRestoreReqComplete()V
    .registers 3

    .prologue
    .line 32
    const-string v0, "NormalState"

    const-string v1, "onRestoreReqComplete is not allowed on NormalState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public requestBackgroundDimming(ZI)V
    .registers 5

    .prologue
    .line 109
    const-string v0, "NormalState"

    const-string v1, "dimming request is not allowed on NormalState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public requestBackgroundDimming(ZII)V
    .registers 6

    .prologue
    .line 115
    const-string v0, "NormalState"

    const-string v1, "dimming request is not allowed on NormalState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public requestExtView([Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 44
    const-string v0, "NormalState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestExtView, isExtViewAvailable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v2}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->isExtViewAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->isExtViewAvailable()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 46
    const-string v0, "NormalState"

    const-string v1, "requestExtView, start Animation"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->transitionToExtView()V

    .line 48
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0, p1}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->startAnimation([Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/NormalState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    invoke-interface {v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->getExpandingState()Lcom/lge/lgewidgetlib/extview/ExtViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public requestNormalView()V
    .registers 3

    .prologue
    .line 58
    const-string v0, "NormalState"

    const-string v1, "requestNormalView is not allowed on NormalState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
