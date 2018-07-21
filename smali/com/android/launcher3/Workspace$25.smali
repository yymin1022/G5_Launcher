.class Lcom/android/launcher3/Workspace$25;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->removeItemsByList(Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$children:Ljava/util/HashMap;

.field private final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field private final synthetic val$folderAppsToRemove:Ljava/util/HashMap;

.field private final synthetic val$ignoreFolder:Lcom/android/launcher3/FolderInfo;

.field private final synthetic val$removed:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/FolderInfo;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$25;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$25;->val$ignoreFolder:Lcom/android/launcher3/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$25;->val$removed:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/Workspace$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/android/launcher3/Workspace$25;->val$childrenToRemove:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/launcher3/Workspace$25;->val$children:Ljava/util/HashMap;

    .line 4931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 4935
    instance-of v0, p1, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher3/Workspace$25;->val$ignoreFolder:Lcom/android/launcher3/FolderInfo;

    if-eq p1, v0, :cond_35

    .line 4936
    iget-object v0, p0, Lcom/android/launcher3/Workspace$25;->val$removed:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 4937
    check-cast p1, Lcom/android/launcher3/FolderInfo;

    .line 4939
    iget-object v0, p0, Lcom/android/launcher3/Workspace$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4940
    iget-object v0, p0, Lcom/android/launcher3/Workspace$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4945
    :goto_23
    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 4954
    :goto_29
    return v0

    .line 4942
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4943
    iget-object v2, p0, Lcom/android/launcher3/Workspace$25;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 4949
    :cond_35
    iget-object v0, p0, Lcom/android/launcher3/Workspace$25;->val$removed:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 4950
    iget-object v2, p0, Lcom/android/launcher3/Workspace$25;->val$childrenToRemove:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/Workspace$25;->val$children:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 4951
    goto :goto_29

    .line 4954
    :cond_4c
    const/4 v0, 0x0

    goto :goto_29
.end method
