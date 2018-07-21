.class Lcom/android/launcher3/Workspace$24;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->updateRestoreItems(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$24;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$24;->val$updates:Ljava/util/HashSet;

    .line 4711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 4714
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_17

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_17

    .line 4715
    iget-object v0, p0, Lcom/android/launcher3/Workspace$24;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4716
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyState(Z)V

    .line 4723
    :cond_16
    :goto_16
    return v1

    .line 4717
    :cond_17
    instance-of v0, p2, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v0, :cond_16

    .line 4718
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_16

    .line 4719
    iget-object v0, p0, Lcom/android/launcher3/Workspace$24;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4720
    check-cast p2, Lcom/android/launcher3/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/PendingAppWidgetHostView;->applyState()V

    goto :goto_16
.end method
