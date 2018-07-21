.class Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lcom/android/launcher3/CellLayout;

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V
    .registers 5

    .prologue
    .line 3607
    iput-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3608
    iput-object p2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    .line 3609
    iput p3, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3610
    iput p4, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 3611
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 3614
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_e

    .line 3616
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3618
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 3619
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 3620
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3621
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 3622
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->showFolderAccept(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V

    .line 3623
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 3624
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3627
    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3628
    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3629
    return-void
.end method
