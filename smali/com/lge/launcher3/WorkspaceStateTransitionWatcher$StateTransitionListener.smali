.class public interface abstract Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateTransitionListener"
.end annotation


# virtual methods
.method public abstract onStateTransitionEnd(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
.end method

.method public abstract onStateTransitionStart(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
.end method
