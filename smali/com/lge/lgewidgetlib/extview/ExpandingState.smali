.class public Lcom/lge/lgewidgetlib/extview/ExpandingState;
.super Ljava/lang/Object;
.source "ExpandingState.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/ExtViewState;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpandingState"


# instance fields
.field mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

.field mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

.field mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

.field mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;


# direct methods
.method public constructor <init>(Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewHandler;)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    .line 17
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    .line 18
    iput-object p3, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 19
    iput-object p4, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public cancelExtView()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->onExtViewModeCanceled()V

    .line 62
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->cancelAnimation()V

    .line 63
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->transitionToNormalView()V

    .line 64
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    invoke-interface {v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->getNormalState()Lcom/lge/lgewidgetlib/extview/ExtViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 65
    return-void
.end method

.method public clientExpandAnimationFinished()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public clientRestoreAnimationFinished()V
    .registers 1

    .prologue
    .line 84
    return-void
.end method

.method public isExtViewAvailable()Z
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public notifyExtViewAvailable()V
    .registers 1

    .prologue
    .line 102
    return-void
.end method

.method public notifyStateChanged()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method

.method public notifyWidgetDeleted()V
    .registers 3

    .prologue
    .line 70
    const-string v0, "ExpandingState"

    const-string v1, "notifyWidgetDeleted is not allowed on ExpandingState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->notifyWidgetDeleted()V

    .line 72
    return-void
.end method

.method public onCancelReqComplete()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public onExpandReqComplete()V
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->onExtViewModeComplete()V

    .line 26
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    invoke-interface {v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->getExpandedState()Lcom/lge/lgewidgetlib/extview/ExtViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 27
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setShowColorView(Z)V

    .line 28
    return-void
.end method

.method public onRestoreReqComplete()V
    .registers 3

    .prologue
    .line 33
    const-string v0, "ExpandingState"

    const-string v1, "onRestoreReqComplete is not allowed on ExpandingState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public requestBackgroundDimming(ZI)V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0, p1, p2}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setExtViewBackgroudDimming(ZI)V

    .line 107
    return-void
.end method

.method public requestBackgroundDimming(ZII)V
    .registers 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setExtViewBackgroudDimming(ZII)V

    .line 113
    return-void
.end method

.method public requestExtView([Landroid/view/View;)Z
    .registers 4

    .prologue
    .line 47
    const-string v0, "ExpandingState"

    const-string v1, "requestExtView is already called"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public requestNormalView()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    invoke-interface {v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->getRestoreState()Lcom/lge/lgewidgetlib/extview/ExtViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 55
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandingState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->reverseAnimation()V

    .line 56
    return-void
.end method
