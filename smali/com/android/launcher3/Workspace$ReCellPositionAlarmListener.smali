.class Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;
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
    name = "ReCellPositionAlarmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 3675
    iput-object p1, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 11

    .prologue
    const v8, 0x7f0f0106

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3678
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3679
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3678
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 3680
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3704
    :cond_1a
    :goto_1a
    return-void

    .line 3684
    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1a

    .line 3685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3686
    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 3689
    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget v2, v2, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq v1, v2, :cond_af

    .line 3691
    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    .line 3692
    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v4, v4, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 3690
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3693
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3694
    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3695
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v3, v5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 3696
    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v3, v6

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 3694
    invoke-virtual {v1, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3697
    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 3699
    :cond_af
    iget-object v0, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3700
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v3, v5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 3701
    iget-object v3, p0, Lcom/android/launcher3/Workspace$ReCellPositionAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v3, v6

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 3699
    invoke-virtual {v1, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a
.end method
