.class Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;
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

.field private final synthetic val$removedShortcuts:Ljava/util/ArrayList;

.field private final synthetic val$updatedShortcuts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$updatedShortcuts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$removedShortcuts:Ljava/util/ArrayList;

    .line 3520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->access$0(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 3524
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_1d

    if-eqz v0, :cond_1d

    .line 3525
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 3526
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$updatedShortcuts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$removedShortcuts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3525
    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 3528
    :cond_1d
    return-void
.end method
