.class Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;
.super Ljava/lang/Object;
.source "LGUninstallDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;

.field private final synthetic val$componentInfo:Landroid/util/Pair;

.field private final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;Landroid/util/Pair;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->this$0:Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;

    iput-object p2, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->val$componentInfo:Landroid/util/Pair;

    iput-object p3, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->val$componentInfo:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->this$0:Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;

    invoke-virtual {v1}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 57
    invoke-static {v1, v0, v2}, Lcom/android/launcher3/AllAppsList;->packageHasActivities(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_23

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_19
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->this$0:Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->access$1(Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;Lcom/android/launcher3/DragSource;Z)V

    .line 60
    return-void

    .line 57
    :cond_23
    const/4 v0, 0x1

    goto :goto_19
.end method