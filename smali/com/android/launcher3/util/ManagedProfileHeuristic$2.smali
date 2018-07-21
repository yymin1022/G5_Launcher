.class Lcom/android/launcher3/util/ManagedProfileHeuristic$2;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/ManagedProfileHeuristic;->finalizeWorkFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

.field private final synthetic val$shortcuts:Ljava/util/ArrayList;

.field private final synthetic val$workFolder:Lcom/android/launcher3/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$2;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$2;->val$shortcuts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$2;->val$workFolder:Lcom/android/launcher3/FolderInfo;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$2;->val$shortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 185
    return-void

    .line 182
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 183
    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$2;->val$workFolder:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_6
.end method
