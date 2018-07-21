.class Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;
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
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$removedComponents:Ljava/util/HashSet;

.field private final synthetic val$removedPackages:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->val$removedPackages:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->val$removedComponents:Ljava/util/HashSet;

    .line 3577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->access$0(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 3580
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_1d

    if-eqz v0, :cond_1d

    .line 3581
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 3582
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->val$removedPackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->val$removedComponents:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3581
    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3584
    :cond_1d
    return-void
.end method
