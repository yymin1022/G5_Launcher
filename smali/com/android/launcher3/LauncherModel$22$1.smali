.class Lcom/android/launcher3/LauncherModel$22$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$22;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$items:Ljava/util/ArrayList;

.field private final synthetic val$originRank:I

.field private final synthetic val$target:Lcom/android/launcher3/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$22;ILjava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$22$1;->this$1:Lcom/android/launcher3/LauncherModel$22;

    iput p2, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$originRank:I

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$items:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$target:Lcom/android/launcher3/FolderInfo;

    iput-object p6, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 4179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$22$1;)Lcom/android/launcher3/LauncherModel$22;
    .registers 2

    .prologue
    .line 4179
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$22$1;->this$1:Lcom/android/launcher3/LauncherModel$22;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 4183
    iget v0, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$originRank:I

    .line 4184
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4186
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 4193
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 4194
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$22$1;->this$1:Lcom/android/launcher3/LauncherModel$22;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$22;->access$0(Lcom/android/launcher3/LauncherModel$22;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/LauncherModel$22$1$1;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$target:Lcom/android/launcher3/FolderInfo;

    invoke-direct {v1, p0, v2, v9, v3}, Lcom/android/launcher3/LauncherModel$22$1$1;-><init>(Lcom/android/launcher3/LauncherModel$22$1;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 4203
    :cond_2c
    return-void

    .line 4186
    :cond_2d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 4187
    add-int/lit8 v8, v0, 0x1

    iput v0, v1, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 4188
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$target:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$22$1;->val$target:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/FolderInfo;->screenId:J

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 4190
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v8

    goto :goto_e
.end method
