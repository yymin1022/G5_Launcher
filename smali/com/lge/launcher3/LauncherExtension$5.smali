.class Lcom/lge/launcher3/LauncherExtension$5;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/LauncherExtension;->setVisibilityDynamicGridButton()V
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
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$5;->this$0:Lcom/lge/launcher3/LauncherExtension;

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$5;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1021
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$5;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_ShowGrid"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$5;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/LauncherExtension;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$5;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mDynamicGridPanelView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$5;->this$0:Lcom/lge/launcher3/LauncherExtension;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->DYNAMIC_GRID_OVERVIEW:Lcom/android/launcher3/Launcher$State;

    invoke-static {v0, v1}, Lcom/lge/launcher3/LauncherExtension;->access$18(Lcom/lge/launcher3/LauncherExtension;Lcom/android/launcher3/Launcher$State;)V

    .line 1026
    :cond_2f
    return-void
.end method
