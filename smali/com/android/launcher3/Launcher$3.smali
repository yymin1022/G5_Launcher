.class Lcom/android/launcher3/Launcher$3;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    .line 1639
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1642
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1643
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1644
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    iput-boolean v4, v0, Lcom/android/launcher3/Launcher;->mUserPresent:Z

    .line 1645
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAllResizeFrames()V

    .line 1646
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->updateAutoAdvanceState()V

    .line 1647
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_31

    .line 1648
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$exitCleanViewMode(Lcom/android/launcher3/Launcher;)V

    .line 1652
    :cond_31
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_54

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    if-eqz v0, :cond_54

    .line 1653
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_54

    .line 1654
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)V

    .line 1656
    :cond_54
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onScreenOff()V

    .line 1670
    :cond_59
    :goto_59
    return-void

    .line 1657
    :cond_5a
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1658
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/Launcher;->mUserPresent:Z

    .line 1659
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->updateAutoAdvanceState()V

    goto :goto_59
.end method
