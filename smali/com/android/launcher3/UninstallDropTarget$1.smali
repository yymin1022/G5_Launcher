.class Lcom/android/launcher3/UninstallDropTarget$1;
.super Ljava/lang/Object;
.source "UninstallDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/UninstallDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/UninstallDropTarget;

.field private final synthetic val$componentInfo:Landroid/util/Pair;

.field private final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/UninstallDropTarget;Landroid/util/Pair;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/UninstallDropTarget$1;->this$0:Lcom/android/launcher3/UninstallDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$componentInfo:Landroid/util/Pair;

    iput-object p3, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$componentInfo:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$1;->this$0:Lcom/android/launcher3/UninstallDropTarget;

    invoke-virtual {v1}, Lcom/android/launcher3/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 107
    invoke-static {v1, v0, v2}, Lcom/android/launcher3/AllAppsList;->packageHasActivities(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    .line 108
    if-eqz v0, :cond_23

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_19
    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$1;->this$0:Lcom/android/launcher3/UninstallDropTarget;

    iget-object v2, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/UninstallDropTarget;->sendUninstallResult(Lcom/android/launcher3/DragSource;Z)V

    .line 110
    return-void

    .line 107
    :cond_23
    const/4 v0, 0x1

    goto :goto_19
.end method
