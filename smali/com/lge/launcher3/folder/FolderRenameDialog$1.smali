.class Lcom/lge/launcher3/folder/FolderRenameDialog$1;
.super Ljava/lang/Object;
.source "FolderRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/folder/FolderRenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/folder/FolderRenameDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$1;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$1;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$6(Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    .line 154
    return-void
.end method
