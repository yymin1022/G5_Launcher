.class Lcom/android/launcher3/LauncherModel$18;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->loadAndBindWidgetsAndShortcuts(Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;ZLcom/android/launcher3/LauncherModel$Callbacks;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$18;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$18;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherModel$18;->val$refresh:Z

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$18;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 3710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$18;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 3710
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$18;->this$0:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$18;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$18;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$18;->val$refresh:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->updateWidgetsModel(Landroid/content/Context;Z)V

    .line 3714
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$18;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->clone()Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v0

    .line 3716
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$18;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/LauncherModel$18$1;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$18;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/launcher3/LauncherModel$18$1;-><init>(Lcom/android/launcher3/LauncherModel$18;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/model/WidgetsModel;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3726
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v1

    .line 3727
    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->getRawList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3726
    invoke-virtual {v1, v0}, Lcom/android/launcher3/WidgetPreviewLoader;->removeObsoletePreviews(Ljava/util/ArrayList;)V

    .line 3728
    return-void
.end method
