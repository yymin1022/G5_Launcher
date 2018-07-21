.class public Lcom/android/launcher3/TransitionStates;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"


# instance fields
.field final allAppsToWorkspace:Z

.field final oldStateIsNormal:Z

.field final oldStateIsNormalHidden:Z

.field final oldStateIsOverview:Z

.field final oldStateIsOverviewHidden:Z

.field final oldStateIsSpringLoaded:Z

.field final overviewToAllApps:Z

.field final overviewToWorkspace:Z

.field final stateIsNormal:Z

.field final stateIsNormalHidden:Z

.field final stateIsOverview:Z

.field final stateIsOverviewHidden:Z

.field final stateIsSpringLoaded:Z

.field final workspaceToAllApps:Z

.field final workspaceToOverview:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_82

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormal:Z

    .line 153
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_84

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsSpringLoaded:Z

    .line 154
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_86

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormalHidden:Z

    .line 155
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_88

    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverviewHidden:Z

    .line 156
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_8a

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    .line 158
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_8c

    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    .line 159
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_8e

    move v0, v1

    :goto_34
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    .line 160
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_90

    move v0, v1

    :goto_3b
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    .line 161
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_92

    move v0, v1

    :goto_42
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    .line 162
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_94

    move v0, v1

    :goto_49
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    .line 164
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormal:Z

    if-eqz v0, :cond_96

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-eqz v0, :cond_96

    move v0, v1

    :goto_54
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->workspaceToOverview:Z

    .line 165
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormal:Z

    if-eqz v0, :cond_98

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    if-eqz v0, :cond_98

    move v0, v1

    :goto_5f
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->workspaceToAllApps:Z

    .line 166
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-eqz v0, :cond_9a

    move v0, v1

    :goto_6a
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->overviewToWorkspace:Z

    .line 167
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    if-eqz v0, :cond_9c

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v0, :cond_9c

    move v0, v1

    :goto_75
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->overviewToAllApps:Z

    .line 168
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    if-eqz v0, :cond_9e

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-eqz v0, :cond_9e

    :goto_7f
    iput-boolean v1, p0, Lcom/android/launcher3/TransitionStates;->allAppsToWorkspace:Z

    .line 169
    return-void

    :cond_82
    move v0, v2

    .line 152
    goto :goto_a

    :cond_84
    move v0, v2

    .line 153
    goto :goto_11

    :cond_86
    move v0, v2

    .line 154
    goto :goto_18

    :cond_88
    move v0, v2

    .line 155
    goto :goto_1f

    :cond_8a
    move v0, v2

    .line 156
    goto :goto_26

    :cond_8c
    move v0, v2

    .line 158
    goto :goto_2d

    :cond_8e
    move v0, v2

    .line 159
    goto :goto_34

    :cond_90
    move v0, v2

    .line 160
    goto :goto_3b

    :cond_92
    move v0, v2

    .line 161
    goto :goto_42

    :cond_94
    move v0, v2

    .line 162
    goto :goto_49

    :cond_96
    move v0, v2

    .line 164
    goto :goto_54

    :cond_98
    move v0, v2

    .line 165
    goto :goto_5f

    :cond_9a
    move v0, v2

    .line 166
    goto :goto_6a

    :cond_9c
    move v0, v2

    .line 167
    goto :goto_75

    :cond_9e
    move v1, v2

    .line 168
    goto :goto_7f
.end method

.method public static ajc$get$oldStateIsOverview(Lcom/android/launcher3/TransitionStates;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    return v0
.end method

.method public static ajc$get$stateIsNormal(Lcom/android/launcher3/TransitionStates;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    return v0
.end method

.method public static ajc$get$stateIsOverview(Lcom/android/launcher3/TransitionStates;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    return v0
.end method

.method public static ajc$set$oldStateIsOverview(Lcom/android/launcher3/TransitionStates;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    return-void
.end method

.method public static ajc$set$stateIsNormal(Lcom/android/launcher3/TransitionStates;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    return-void
.end method

.method public static ajc$set$stateIsOverview(Lcom/android/launcher3/TransitionStates;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    return-void
.end method
