.class Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$6;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    .line 3606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3607
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->access$0(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$6;->callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$6;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->access$0(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 3610
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$6;->callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_15

    if-eqz v0, :cond_15

    .line 3611
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$6;->callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->dumpLogsToLocalData()V

    .line 3613
    :cond_15
    return-void
.end method
