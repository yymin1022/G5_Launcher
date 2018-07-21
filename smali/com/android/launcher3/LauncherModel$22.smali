.class Lcom/android/launcher3/LauncherModel$22;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->moveItemsToFolder(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$items:Ljava/util/ArrayList;

.field private final synthetic val$target:Lcom/android/launcher3/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/FolderInfo;Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$22;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$22;->val$target:Lcom/android/launcher3/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$22;->val$items:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$22;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/launcher3/LauncherModel$22;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 4174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$22;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 4174
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$22;->this$0:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 4176
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$22;->val$target:Lcom/android/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4177
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$22;->val$target:Lcom/android/launcher3/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$22;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->add(Ljava/util/List;)V

    .line 4179
    new-instance v0, Lcom/android/launcher3/LauncherModel$22$1;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$22;->val$items:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$22;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$22;->val$target:Lcom/android/launcher3/FolderInfo;

    iget-object v6, p0, Lcom/android/launcher3/LauncherModel$22;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/LauncherModel$22$1;-><init>(Lcom/android/launcher3/LauncherModel$22;ILjava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$1(Ljava/lang/Runnable;)V

    .line 4205
    return-void
.end method
