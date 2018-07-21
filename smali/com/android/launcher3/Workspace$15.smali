.class Lcom/android/launcher3/Workspace$15;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$15;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$15;->val$tag:Ljava/lang/Object;

    .line 4426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .prologue
    .line 4430
    instance-of v0, p2, Lcom/android/launcher3/Folder;

    if-eqz v0, :cond_1b

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace$15;->val$tag:Ljava/lang/Object;

    if-ne v0, v1, :cond_1b

    .line 4431
    check-cast p2, Lcom/android/launcher3/Folder;

    invoke-virtual {p2}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/FolderInfo;->opened:Z

    if-eqz v0, :cond_1b

    .line 4430
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
