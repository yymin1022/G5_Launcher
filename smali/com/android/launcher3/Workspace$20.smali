.class Lcom/android/launcher3/Workspace$20;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->disableShortcutsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$packageNames:Ljava/util/HashSet;

.field private final synthetic val$reason:I

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;I)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$20;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$20;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$20;->val$packageNames:Ljava/util/HashSet;

    iput p4, p0, Lcom/android/launcher3/Workspace$20;->val$reason:I

    .line 4490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    .prologue
    .line 4493
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_3b

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_3b

    .line 4494
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 4495
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4496
    iget-object v1, p0, Lcom/android/launcher3/Workspace$20;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    if-eqz v0, :cond_3b

    .line 4497
    iget-object v1, p0, Lcom/android/launcher3/Workspace$20;->val$packageNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4498
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    iget v1, p0, Lcom/android/launcher3/Workspace$20;->val$reason:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 4499
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    .line 4500
    iget-object v0, p0, Lcom/android/launcher3/Workspace$20;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/IconCache;)V

    .line 4502
    if-eqz p3, :cond_3b

    .line 4503
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 4508
    :cond_3b
    const/4 v0, 0x0

    return v0
.end method
