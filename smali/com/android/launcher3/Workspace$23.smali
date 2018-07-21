.class Lcom/android/launcher3/Workspace$23;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lcom/android/launcher3/Workspace$23;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$23;->val$updates:Ljava/util/HashSet;

    .line 4681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    .prologue
    .line 4684
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2b

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2b

    .line 4685
    iget-object v0, p0, Lcom/android/launcher3/Workspace$23;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4686
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 4687
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    .line 4688
    invoke-static {p2}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/PreloadIconDrawable;

    .line 4690
    iget-object v1, p0, Lcom/android/launcher3/Workspace$23;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 4691
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v2

    xor-int/2addr v0, v2

    .line 4690
    invoke-virtual {p2, p1, v1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/IconCache;Z)V

    .line 4693
    if-eqz p3, :cond_2b

    .line 4694
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 4698
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method
