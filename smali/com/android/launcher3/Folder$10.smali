.class Lcom/android/launcher3/Folder$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Folder;->animateClosed([Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    .line 661
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->onCloseComplete()V

    .line 665
    iget-object v0, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 666
    iget-object v0, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    iput v2, v0, Lcom/android/launcher3/Folder;->mState:I

    .line 668
    invoke-static {}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->getInstance()Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    .line 669
    sget-object v2, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->CLOSE_END:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    .line 668
    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->setState(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;)V

    .line 670
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    const/16 v1, 0x20

    .line 674
    iget-object v2, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f004c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/Folder;->mState:I

    .line 677
    invoke-static {}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->getInstance()Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Folder$10;->this$0:Lcom/android/launcher3/Folder;

    .line 678
    sget-object v2, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;->CLOSE_START:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;

    .line 677
    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->setState(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;)V

    .line 679
    return-void
.end method
