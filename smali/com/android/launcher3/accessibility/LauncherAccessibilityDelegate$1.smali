.class Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "LauncherAccessibilityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private final synthetic val$coordinates:[I

.field private final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field private final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;J[I)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    iput-wide p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iput-object p5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v2, -0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_3f

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v1

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 164
    iget-wide v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    aget v7, v7, v9

    .line 162
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v8, v2, v9}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 176
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 177
    return-void

    .line 169
    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_36

    .line 170
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    check-cast v1, Lcom/android/launcher3/PendingAddItemInfo;

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 172
    iget-wide v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 174
    iget-wide v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    iget v7, v1, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    iget v8, v1, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    .line 173
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V

    goto :goto_36
.end method
