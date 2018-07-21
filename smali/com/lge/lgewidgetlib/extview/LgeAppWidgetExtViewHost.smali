.class public Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;
.super Ljava/lang/Object;
.source "LgeAppWidgetExtViewHost.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewHost;
.implements Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;
.implements Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtViewHost"

.field public static sIsExpaned:Z


# instance fields
.field mExpandedState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

.field mExpandingState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

.field private mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

.field private mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

.field private mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

.field private mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

.field mNormalState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

.field mRestoreState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

.field mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;


# direct methods
.method public constructor <init>(Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    .line 18
    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    .line 30
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 31
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 33
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    const-string v2, "mView"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    return-void
.end method

.method private setExtViewClient(Landroid/view/View;)Z
    .registers 6

    .prologue
    .line 50
    new-instance v0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    invoke-direct {v0, p0, p1}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;-><init>(Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewHost;Landroid/view/View;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    .line 51
    new-instance v0, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;-><init>(Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    .line 53
    new-instance v0, Lcom/lge/lgewidgetlib/extview/NormalState;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lge/lgewidgetlib/extview/NormalState;-><init>(Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewHandler;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mNormalState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    .line 54
    new-instance v0, Lcom/lge/lgewidgetlib/extview/ExpandingState;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lge/lgewidgetlib/extview/ExpandingState;-><init>(Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewHandler;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExpandingState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    .line 55
    new-instance v0, Lcom/lge/lgewidgetlib/extview/ExpandedState;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lge/lgewidgetlib/extview/ExpandedState;-><init>(Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewHandler;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExpandedState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    .line 56
    new-instance v0, Lcom/lge/lgewidgetlib/extview/RestoreState;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostAdapter:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lge/lgewidgetlib/extview/RestoreState;-><init>(Lcom/lge/lgewidgetlib/extview/IExtViewStateMachine;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewHandler;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mRestoreState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    .line 58
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mNormalState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-virtual {p0, v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public cancelExtView()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    if-nez v0, :cond_c

    .line 76
    const-string v0, "ExtViewHost"

    const-string v1, "endExtViewMode mExtViewClient = null return"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_b
    return-void

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->cancelExtView()V

    goto :goto_b
.end method

.method public clientExpandAnimationFinished()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->clientExpandAnimationFinished()V

    .line 119
    return-void
.end method

.method public clientRestoreAnimationFinished()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->clientRestoreAnimationFinished()V

    .line 125
    return-void
.end method

.method public getExpandedState()Lcom/lge/lgewidgetlib/extview/ExtViewState;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExpandedState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    return-object v0
.end method

.method public getExpandingState()Lcom/lge/lgewidgetlib/extview/ExtViewState;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExpandingState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    return-object v0
.end method

.method public getExtendedWidgetHeight()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewHandler:Lcom/lge/lgewidgetlib/extview/ExtViewHandler;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getExtViewHeight()I

    move-result v0

    return v0
.end method

.method public getNormalState()Lcom/lge/lgewidgetlib/extview/ExtViewState;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mNormalState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    return-object v0
.end method

.method public getRestoreState()Lcom/lge/lgewidgetlib/extview/ExtViewState;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mRestoreState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    return-object v0
.end method

.method public isExpanded()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    instance-of v0, v0, Lcom/lge/lgewidgetlib/extview/NormalState;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isExtViewAvailable()Z
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->isExtViewAvailable()Z

    move-result v0

    return v0
.end method

.method public isImprovedExtHost()Z
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public isWidgetUpdateSkippable()Z
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->isWidgetUpdateSkippable()Z

    move-result v0

    .line 199
    :goto_a
    return v0

    .line 197
    :cond_b
    const-string v0, "ExtViewHost"

    const-string v1, "isWidgetUpdateSkippable, mExtViewClient is null"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public notifyBindingStarted()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->notifyBindingStarted()V

    .line 191
    :goto_9
    return-void

    .line 189
    :cond_a
    const-string v0, "ExtViewHost"

    const-string v1, "notifyBindingStarted, mExtViewClient is null"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public notifyExtViewAvailable()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->notifyExtViewAvailable()V

    .line 167
    return-void
.end method

.method public notifyRequestExtViewException()V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    if-eqz v0, :cond_a

    .line 171
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->notifyRequestExtViewException()V

    .line 175
    :goto_9
    return-void

    .line 173
    :cond_a
    const-string v0, "ExtViewHost"

    const-string v1, "notifyRequestExtViewException, mExtViewClient is null"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public notifyWidgetDeleted()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->notifyWidgetDeleted()V

    .line 113
    :cond_9
    return-void
.end method

.method public notifyWidgetHostDestroyed()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    if-eqz v0, :cond_a

    .line 179
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->notifyWidgetHostDestroyed()V

    .line 183
    :goto_9
    return-void

    .line 181
    :cond_a
    const-string v0, "ExtViewHost"

    const-string v1, "notifyWidgetHostDestroyed, mExtViewClient is null"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public notifyWidgetReset()V
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;->notifyWidgetReset()V

    .line 222
    :cond_9
    return-void
.end method

.method public onCancelReqComplete()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->onCancelReqComplete()V

    .line 156
    return-void
.end method

.method public onExpandReqComplete()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->onExpandReqComplete()V

    .line 144
    return-void
.end method

.method public onRestoreReqComplete()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->onRestoreReqComplete()V

    .line 150
    return-void
.end method

.method public requestExtView([Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0, p1}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->requestExtView([Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public requestExtViewDimming(ZI)V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0, p1, p2}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->requestBackgroundDimming(ZI)V

    .line 205
    return-void
.end method

.method public requestExtViewDimming(ZII)V
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->requestBackgroundDimming(ZII)V

    .line 210
    return-void
.end method

.method public requestNormalView()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->requestNormalView()V

    .line 72
    return-void
.end method

.method public setState(Lcom/lge/lgewidgetlib/extview/ExtViewState;)V
    .registers 5

    .prologue
    .line 130
    const-string v0, "ExtViewHost"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New State = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    instance-of v0, p1, Lcom/lge/lgewidgetlib/extview/NormalState;

    if-eqz v0, :cond_23

    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->sIsExpaned:Z

    .line 136
    :goto_1b
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    .line 137
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mState:Lcom/lge/lgewidgetlib/extview/ExtViewState;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewState;->notifyStateChanged()V

    .line 138
    return-void

    .line 134
    :cond_23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->sIsExpaned:Z

    goto :goto_1b
.end method

.method public updateExtViewList()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 38
    const-string v3, "mView"

    .line 37
    invoke-static {v0, v2, v3}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    .line 40
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 41
    const-string v3, "setExtViewHost"

    invoke-static {v3, v2, v0}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getLgeCustomView(Ljava/lang/String;[Ljava/lang/Class;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 42
    if-nez v0, :cond_21

    move v0, v1

    .line 45
    :goto_20
    return v0

    :cond_21
    invoke-direct {p0, v0}, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->setExtViewClient(Landroid/view/View;)Z

    move-result v0

    goto :goto_20
.end method
