.class public Lcom/lge/launcher3/OverViewPanel;
.super Landroid/widget/LinearLayout;
.source "OverViewPanel.java"

# interfaces
.implements Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;


# instance fields
.field mOnWorkspaceTransition:Z

.field mWorkspaceState:Lcom/android/launcher3/Workspace$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/OverViewPanel;->mOnWorkspaceTransition:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-boolean v0, p0, Lcom/lge/launcher3/OverViewPanel;->mOnWorkspaceTransition:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    iput-boolean v0, p0, Lcom/lge/launcher3/OverViewPanel;->mOnWorkspaceTransition:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/OverViewPanel;->mOnWorkspaceTransition:Z

    .line 32
    return-void
.end method

.method private resetCellLayoutsBackgroundAlpha(Lcom/android/launcher3/Workspace$State;)V
    .registers 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/launcher3/OverViewPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_19

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_19

    .line 67
    invoke-virtual {p0}, Lcom/lge/launcher3/OverViewPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 68
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_19

    .line 70
    invoke-static {v0, p1}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$setCellLayoutsBackgroundAlpha(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$State;)V

    .line 73
    :cond_19
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 38
    invoke-virtual {p0}, Lcom/lge/launcher3/OverViewPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 39
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/OverViewPanel;->mWorkspaceState:Lcom/android/launcher3/Workspace$State;

    .line 42
    invoke-virtual {p0}, Lcom/lge/launcher3/OverViewPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->addListener(Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;)Z

    .line 43
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 49
    invoke-virtual {p0}, Lcom/lge/launcher3/OverViewPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->removeListener(Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;)Z

    .line 50
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/OverViewPanel;->mWorkspaceState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/lge/launcher3/OverViewPanel;->mOnWorkspaceTransition:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onStateTransitionEnd(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .registers 4

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/OverViewPanel;->mOnWorkspaceTransition:Z

    .line 60
    iput-object p2, p0, Lcom/lge/launcher3/OverViewPanel;->mWorkspaceState:Lcom/android/launcher3/Workspace$State;

    .line 61
    invoke-direct {p0, p2}, Lcom/lge/launcher3/OverViewPanel;->resetCellLayoutsBackgroundAlpha(Lcom/android/launcher3/Workspace$State;)V

    .line 62
    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/OverViewPanel;->mOnWorkspaceTransition:Z

    .line 55
    return-void
.end method
