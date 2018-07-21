.class public Lcom/lge/lgewidgetlib/extview/RestoreState;
.super Ljava/lang/Object;
.source "RestoreState.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/ExtViewState;


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreState"


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
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    .line 17
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    .line 18
    iput-object p3, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 19
    iput-object p4, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public cancelExtView()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->onExtViewModeCanceled()V

    .line 60
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->cancelAnimation()V

    .line 61
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    invoke-interface {v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->getNormalState()Lcom/lge/lgewidgetlib/extview/ExtViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 62
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->transitionToNormalView()V

    .line 63
    return-void
.end method

.method public clientExpandAnimationFinished()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public clientRestoreAnimationFinished()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method public isExtViewAvailable()Z
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public notifyExtViewAvailable()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method public notifyStateChanged()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public notifyWidgetDeleted()V
    .registers 3

    .prologue
    .line 68
    const-string v0, "RestoreState"

    const-string v1, "notifyWidgetDeleted is not allowed on RestoreState"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->notifyWidgetDeleted()V

    .line 70
    return-void
.end method

.method public onCancelReqComplete()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public onExpandReqComplete()V
    .registers 3

    .prologue
    .line 25
    const-string v0, "RestoreState"

    const-string v1, "onExpandReqComplete is not allowed on Restoe"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onRestoreReqComplete()V
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->transitionToNormalView()V

    .line 32
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->onWidgetModeComplete()V

    .line 33
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mStateMachine:Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;

    invoke-interface {v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->getNormalState()Lcom/lge/lgewidgetlib/extview/ExtViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 34
    return-void
.end method

.method public requestBackgroundDimming(ZI)V
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0, p1, p2}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setExtViewBackgroudDimming(ZI)V

    .line 106
    return-void
.end method

.method public requestBackgroundDimming(ZII)V
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/RestoreState;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setExtViewBackgroudDimming(ZII)V

    .line 113
    return-void
.end method

.method public requestExtView([Landroid/view/View;)Z
    .registers 4

    .prologue
    .line 45
    const-string v0, "RestoreState"

    const-string v1, "currently it is on Restoe"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public requestNormalView()V
    .registers 3

    .prologue
    .line 52
    const-string v0, "RestoreState"

    const-string v1, "requestNormalView is already called"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->exceptWithLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
