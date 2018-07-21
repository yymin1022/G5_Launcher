.class Lcom/android/launcher3/LauncherModel$18$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$18;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$model:Lcom/android/launcher3/model/WidgetsModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$18;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$18$1;->this$1:Lcom/android/launcher3/LauncherModel$18;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$18$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$18$1;->val$model:Lcom/android/launcher3/model/WidgetsModel;

    .line 3716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$18$1;->this$1:Lcom/android/launcher3/LauncherModel$18;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$18;->access$0(Lcom/android/launcher3/LauncherModel$18;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 3720
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$18$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_17

    if-eqz v0, :cond_17

    .line 3721
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$18$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$18$1;->val$model:Lcom/android/launcher3/model/WidgetsModel;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAllPackages(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 3723
    :cond_17
    return-void
.end method
