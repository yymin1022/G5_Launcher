.class public Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;


# instance fields
.field private mFromState:Lcom/android/launcher3/Workspace$State;

.field private mIsStateTrnsitioning:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mToState:Lcom/android/launcher3/Workspace$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    iput-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mFromState:Lcom/android/launcher3/Workspace$State;

    .line 22
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    iput-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mToState:Lcom/android/launcher3/Workspace$State;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mIsStateTrnsitioning:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;
    .registers 3

    .prologue
    .line 34
    if-nez p0, :cond_b

    .line 35
    sget-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    .line 43
    :goto_a
    return-object v0

    .line 39
    :cond_b
    sget-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    if-nez v0, :cond_1a

    .line 40
    new-instance v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    .line 43
    :cond_1a
    sget-object v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    goto :goto_a
.end method

.method private notifyEndListeners()V
    .registers 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 155
    :cond_4
    return-void

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    .line 153
    iget-object v2, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mFromState:Lcom/android/launcher3/Workspace$State;

    iget-object v3, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mToState:Lcom/android/launcher3/Workspace$State;

    invoke-interface {v0, v2, v3}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;->onStateTransitionEnd(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    goto :goto_b
.end method

.method private notifyStartListeners()V
    .registers 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 143
    :cond_4
    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;

    .line 141
    iget-object v2, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mFromState:Lcom/android/launcher3/Workspace$State;

    iget-object v3, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mToState:Lcom/android/launcher3/Workspace$State;

    invoke-interface {v0, v2, v3}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;->onStateTransitionStart(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    goto :goto_b
.end method


# virtual methods
.method public addListener(Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;)Z
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 104
    const/4 v0, 0x0

    .line 109
    :goto_14
    return v0

    .line 107
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    .line 178
    :cond_c
    return-void
.end method

.method public endStateTransition()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mIsStateTrnsitioning:Z

    .line 70
    invoke-direct {p0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->notifyEndListeners()V

    .line 71
    return-void
.end method

.method public getFromState()Lcom/android/launcher3/Workspace$State;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mFromState:Lcom/android/launcher3/Workspace$State;

    return-object v0
.end method

.method public getToState()Lcom/android/launcher3/Workspace$State;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mToState:Lcom/android/launcher3/Workspace$State;

    return-object v0
.end method

.method public isStateTransitioning()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mIsStateTrnsitioning:Z

    return v0
.end method

.method public removeListener(Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 130
    :cond_5
    :goto_5
    return v0

    .line 121
    :cond_6
    iget-object v1, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1e

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    .line 130
    :cond_1e
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public startStateTransition(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .registers 4

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mFromState:Lcom/android/launcher3/Workspace$State;

    .line 58
    iput-object p2, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mToState:Lcom/android/launcher3/Workspace$State;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->mIsStateTrnsitioning:Z

    .line 62
    invoke-direct {p0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->notifyStartListeners()V

    .line 63
    return-void
.end method
