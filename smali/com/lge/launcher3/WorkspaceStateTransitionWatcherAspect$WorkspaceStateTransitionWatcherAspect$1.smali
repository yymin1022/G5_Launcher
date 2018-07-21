.class public Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect$WorkspaceStateTransitionWatcherAspect$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspaceStateTransitionWatcherAspect.aj"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;->ajc$around$com_lge_launcher3_WorkspaceStateTransitionWatcherAspect$1$614e3726(Lcom/android/launcher3/Workspace$State;IZZLjava/util/HashMap;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect$WorkspaceStateTransitionWatcherAspect$1;->this$0:Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect;

    iput-object p2, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect$WorkspaceStateTransitionWatcherAspect$1;->val$context:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/launcher3/WorkspaceStateTransitionWatcherAspect$WorkspaceStateTransitionWatcherAspect$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/WorkspaceStateTransitionWatcher;->endStateTransition()V

    .line 45
    return-void
.end method
