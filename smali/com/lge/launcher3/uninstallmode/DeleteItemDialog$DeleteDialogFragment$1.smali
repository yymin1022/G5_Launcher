.class Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;->this$1:Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;->this$1:Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->access$0(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;->this$1:Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;

    invoke-static {v1}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->access$1(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)Lcom/android/launcher3/ItemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;->this$1:Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;

    invoke-static {v2}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->access$2(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/DeleteDropTarget;->removeWorkspaceOrFolderItem(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    .line 92
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;->this$1:Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;

    invoke-static {v0, v3}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->access$3(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;Z)V

    .line 94
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;->this$1:Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->access$0(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const v1, 0x7f0f011a

    invoke-static {v0, v1, v3}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;IZ)V

    .line 95
    return-void
.end method
