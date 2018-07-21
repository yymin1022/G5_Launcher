.class public Lcom/lge/lgewidgetlib/extview/ExpandedState;
.super Ljava/lang/Object;
.source "ExpandedState.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/ExtViewState;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpandedState"


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
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    .line 18
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    .line 19
    iput-object p3, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 20
    iput-object p4, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public cancelExtView()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->onExtViewModeCanceled()V

    .line 58
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->transitionToNormalView()V

    .line 59
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    invoke-interface {v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->getNormalState()Lcom/lge/lgewidgetlib/extview/ExtViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 60
    return-void
.end method

.method public clientExpandAnimationFinished()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method

.method public clientRestoreAnimationFinished()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public isExtViewAvailable()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public notifyExtViewAvailable()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method

.method public notifyStateChanged()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

.method public notifyWidgetDeleted()V
    .registers 3

    .prologue
    .line 65
    const-string v0, "ExpandedState"

    const-string v1, "notifyWidgetDeleted is not allowed on ExpandedState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->notifyWidgetDeleted()V

    .line 67
    return-void
.end method

.method public onCancelReqComplete()V
    .registers 3

    .prologue
    .line 38
    const-string v0, "ExpandedState"

    const-string v1, "onCancelReqComplete is not allowed on ExpandedState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onExpandReqComplete()V
    .registers 3

    .prologue
    .line 26
    const-string v0, "ExpandedState"

    const-string v1, "onExpandReqComplete is not allowed on ExpandedState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onRestoreReqComplete()V
    .registers 3

    .prologue
    .line 32
    const-string v0, "ExpandedState"

    const-string v1, "onRestoreReqComplete is not allowed on ExpandedState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public requestBackgroundDimming(ZI)V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0, p1, p2}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setExtViewBackgroudDimming(ZI)V

    .line 103
    return-void
.end method

.method public requestBackgroundDimming(ZII)V
    .registers 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setExtViewBackgroudDimming(ZII)V

    .line 109
    return-void
.end method

.method public requestExtView([Landroid/view/View;)Z
    .registers 4

    .prologue
    .line 44
    const-string v0, "ExpandedState"

    const-string v1, "already ExtView"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public requestNormalView()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->reverseAnimation()V

    .line 51
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExpandedState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    invoke-interface {v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->getRestoreState()Lcom/lge/lgewidgetlib/extview/ExtViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 52
    return-void
.end method
