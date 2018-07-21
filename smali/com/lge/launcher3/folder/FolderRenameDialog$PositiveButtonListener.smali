.class public Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;
.super Ljava/lang/Object;
.source "FolderRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/folder/FolderRenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositiveButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/folder/FolderRenameDialog;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$3(Lcom/lge/launcher3/folder/FolderRenameDialog;)V

    .line 176
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$2(Lcom/lge/launcher3/folder/FolderRenameDialog;I)V

    .line 177
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->dismiss()V

    .line 178
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$1(Lcom/lge/launcher3/folder/FolderRenameDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v1}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$4(Lcom/lge/launcher3/folder/FolderRenameDialog;)I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 179
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$PositiveButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$5(Lcom/lge/launcher3/folder/FolderRenameDialog;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const-string v1, "Home_ChangeFolderColor"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    :cond_29
    return-void
.end method
