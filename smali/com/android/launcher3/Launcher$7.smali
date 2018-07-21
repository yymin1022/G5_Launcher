.class Lcom/android/launcher3/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherSearchCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHotseatImportanceForAccessibility:I

.field private mHotseatImportanceStored:Z

.field private mWorkspaceImportanceForAccessibility:I

.field private mWorkspaceImportanceStored:Z

.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$7;->mWorkspaceImportanceStored:Z

    .line 575
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$7;->mHotseatImportanceStored:Z

    .line 577
    iput v0, p0, Lcom/android/launcher3/Launcher$7;->mWorkspaceImportanceForAccessibility:I

    .line 578
    iput v0, p0, Lcom/android/launcher3/Launcher$7;->mHotseatImportanceForAccessibility:I

    return-void
.end method


# virtual methods
.method public onSearchOverlayClosed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 604
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher$7;->mWorkspaceImportanceStored:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_14

    .line 605
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, p0, Lcom/android/launcher3/Launcher$7;->mWorkspaceImportanceForAccessibility:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    .line 607
    :cond_14
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher$7;->mHotseatImportanceStored:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_27

    .line 608
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget v1, p0, Lcom/android/launcher3/Launcher$7;->mHotseatImportanceForAccessibility:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setImportantForAccessibility(I)V

    .line 610
    :cond_27
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher$7;->mWorkspaceImportanceStored:Z

    .line 611
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher$7;->mHotseatImportanceStored:Z

    .line 612
    return-void
.end method

.method public onSearchOverlayOpened()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 582
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher$7;->mWorkspaceImportanceStored:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher$7;->mHotseatImportanceStored:Z

    if-eqz v0, :cond_b

    .line 600
    :cond_a
    :goto_a
    return-void

    .line 587
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_24

    .line 589
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getImportantForAccessibility()I

    move-result v0

    .line 588
    iput v0, p0, Lcom/android/launcher3/Launcher$7;->mWorkspaceImportanceForAccessibility:I

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    .line 592
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher$7;->mWorkspaceImportanceStored:Z

    .line 594
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_a

    .line 595
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Launcher$7;->mHotseatImportanceForAccessibility:I

    .line 596
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setImportantForAccessibility(I)V

    .line 598
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher$7;->mHotseatImportanceStored:Z

    goto :goto_a
.end method
