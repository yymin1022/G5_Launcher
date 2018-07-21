.class Lcom/lge/launcher3/LauncherExtension$3;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver$IWorkspaceMove;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/LauncherExtension;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/LauncherExtension;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$3;->this$0:Lcom/lge/launcher3/LauncherExtension;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoConcirergeBoard()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$3;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_20

    .line 121
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$3;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_Launcher$getState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Launcher$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_20

    .line 123
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$3;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardNotificationReceiver;->isExistConciergeBoardScreenInDatabase(Landroid/content/Context;)I

    move-result v0

    .line 124
    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 125
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$3;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v1, v0}, Lcom/lge/launcher3/LauncherExtension;->access$13(Lcom/lge/launcher3/LauncherExtension;I)V

    .line 128
    :cond_20
    return-void
.end method
