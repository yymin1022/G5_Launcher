.class Lcom/android/launcher3/Workspace$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$duration:I

.field private final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;ILjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$4;->this$0:Lcom/android/launcher3/Workspace;

    iput p2, p0, Lcom/android/launcher3/Workspace$4;->val$duration:I

    iput-object p3, p0, Lcom/android/launcher3/Workspace$4;->val$onComplete:Ljava/lang/Runnable;

    .line 804
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/launcher3/Workspace$4;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 816
    iget-object v0, p0, Lcom/android/launcher3/Workspace$4;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 818
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/Workspace$4;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 819
    iget-object v0, p0, Lcom/android/launcher3/Workspace$4;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 821
    :cond_16
    iget v0, p0, Lcom/android/launcher3/Workspace$4;->val$duration:I

    if-nez v0, :cond_1f

    .line 822
    iget-object v0, p0, Lcom/android/launcher3/Workspace$4;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 824
    :cond_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 807
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 808
    iget v0, p0, Lcom/android/launcher3/Workspace$4;->val$duration:I

    if-nez v0, :cond_c

    .line 809
    iget-object v0, p0, Lcom/android/launcher3/Workspace$4;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 811
    :cond_c
    return-void
.end method
