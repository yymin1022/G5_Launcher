.class Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredWidgetRefresh"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPending:Z

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppWidgetHost;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/android/launcher3/LauncherAppWidgetHost;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4839
    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    .line 4838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4840
    iput-object p2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    .line 4841
    iput-object p3, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 4842
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    .line 4843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 4845
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->addProviderChangeListener(Ljava/lang/Runnable;)V

    .line 4848
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4849
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4853
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->removeProviderChangeListener(Ljava/lang/Runnable;)V

    .line 4854
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4856
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v0, :cond_f

    .line 4873
    :cond_e
    return-void

    .line 4860
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 4862
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 4863
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v1, v1, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v1, :cond_18

    .line 4864
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v1, Lcom/android/launcher3/PendingAppWidgetHostView;

    .line 4865
    iget-object v2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->removeAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 4867
    invoke-virtual {v1}, Lcom/android/launcher3/PendingAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 4869
    invoke-virtual {v2, v1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 4870
    iget-object v1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    goto :goto_18
.end method
