.class Lcom/android/launcher3/Workspace$22;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$children:Ljava/util/HashMap;

.field private final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field private final synthetic val$componentNames:Ljava/util/HashSet;

.field private final synthetic val$folderAppsToRemove:Ljava/util/HashMap;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$22;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$22;->val$componentNames:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$22;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/android/launcher3/Workspace$22;->val$folderAppsToRemove:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/android/launcher3/Workspace$22;->val$childrenToRemove:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/launcher3/Workspace$22;->val$children:Ljava/util/HashMap;

    .line 4568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 4572
    instance-of v0, p1, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_3b

    .line 4573
    iget-object v0, p0, Lcom/android/launcher3/Workspace$22;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$22;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 4574
    check-cast p1, Lcom/android/launcher3/FolderInfo;

    .line 4576
    iget-object v0, p0, Lcom/android/launcher3/Workspace$22;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4577
    iget-object v0, p0, Lcom/android/launcher3/Workspace$22;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4582
    :goto_29
    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 4591
    :goto_2f
    return v0

    .line 4579
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4580
    iget-object v2, p0, Lcom/android/launcher3/Workspace$22;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 4586
    :cond_3b
    iget-object v0, p0, Lcom/android/launcher3/Workspace$22;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$22;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 4587
    iget-object v2, p0, Lcom/android/launcher3/Workspace$22;->val$childrenToRemove:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/Workspace$22;->val$children:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 4588
    goto :goto_2f

    .line 4591
    :cond_5c
    const/4 v0, 0x0

    goto :goto_2f
.end method
