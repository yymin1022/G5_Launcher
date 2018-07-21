.class Lcom/android/launcher3/Folder$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Folder;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Folder;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder$8;->this$0:Lcom/android/launcher3/Folder;

    iput-object p2, p0, Lcom/android/launcher3/Folder$8;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 536
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/launcher3/Folder$8;->this$0:Lcom/android/launcher3/Folder;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/Folder;->mState:I

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/Folder$8;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/Folder$8;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 554
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Folder$8;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->setFocusOnFirstChild()V

    .line 556
    invoke-static {}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->getInstance()Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Folder$8;->this$0:Lcom/android/launcher3/Folder;

    .line 557
    sget-object v2, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->OPEN_END:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    .line 556
    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->setState(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;)V

    .line 558
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/launcher3/Folder$8;->this$0:Lcom/android/launcher3/Folder;

    const/16 v1, 0x20

    .line 540
    iget-object v2, p0, Lcom/android/launcher3/Folder$8;->this$0:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/launcher3/Folder$8;->this$0:Lcom/android/launcher3/Folder;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/Folder;->mState:I

    .line 543
    invoke-static {}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->getInstance()Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Folder$8;->this$0:Lcom/android/launcher3/Folder;

    .line 544
    sget-object v2, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->OPEN_START:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    .line 543
    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->setState(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;)V

    .line 545
    return-void
.end method
