.class Lcom/android/launcher3/LauncherModel$4$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$4;

.field private final synthetic val$addedShortcutsFinal:Ljava/util/ArrayList;

.field private final synthetic val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$4;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$4$1;->this$1:Lcom/android/launcher3/LauncherModel$4;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4$1;->this$1:Lcom/android/launcher3/LauncherModel$4;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$4;->access$0(Lcom/android/launcher3/LauncherModel$4;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_48

    if-eqz v0, :cond_48

    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 601
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 602
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 603
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 604
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$addedShortcutsFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_49

    .line 612
    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$4$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    .line 613
    const/4 v4, 0x0

    .line 612
    invoke-interface {v0, v3, v2, v1, v4}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 615
    :cond_48
    return-void

    .line 604
    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 605
    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_59

    .line 606
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 608
    :cond_59
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method
