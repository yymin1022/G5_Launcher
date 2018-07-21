.class Lcom/android/launcher3/Workspace$21;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->removeItemsByPackageName(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$cns:Ljava/util/HashSet;

.field private final synthetic val$packageNames:Ljava/util/HashSet;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$21;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$21;->val$packageNames:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$21;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/android/launcher3/Workspace$21;->val$cns:Ljava/util/HashSet;

    .line 4530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .registers 6

    .prologue
    .line 4534
    iget-object v0, p0, Lcom/android/launcher3/Workspace$21;->val$packageNames:Ljava/util/HashSet;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4535
    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$21;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4536
    iget-object v0, p0, Lcom/android/launcher3/Workspace$21;->val$cns:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4537
    const/4 v0, 0x1

    .line 4539
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
