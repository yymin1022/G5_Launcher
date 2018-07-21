.class Lcom/lge/launcher3/uninstallmode/UninstallModeManager$4;
.super Ljava/lang/Object;
.source "UninstallModeManager.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->removeFolderItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

.field private final synthetic val$removeShortcutInfo:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;Lcom/android/launcher3/ShortcutInfo;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$4;->this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    iput-object p2, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$4;->val$removeShortcutInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 477
    instance-of v1, p3, Lcom/android/launcher3/FolderIcon;

    if-nez v1, :cond_6

    .line 491
    :cond_5
    :goto_5
    return v0

    .line 481
    :cond_6
    check-cast p3, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {p3}, Lcom/android/launcher3/FolderIcon;->getFolderInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    .line 482
    if-eqz v1, :cond_5

    .line 486
    iget-object v2, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$4;->val$removeShortcutInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 490
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$4;->val$removeShortcutInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;)V

    .line 491
    const/4 v0, 0x1

    goto :goto_5
.end method
