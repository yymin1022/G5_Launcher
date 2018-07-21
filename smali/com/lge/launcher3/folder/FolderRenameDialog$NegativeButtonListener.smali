.class public Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;
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
    name = "NegativeButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/folder/FolderRenameDialog;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$0(Lcom/lge/launcher3/folder/FolderRenameDialog;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v1}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$1(Lcom/lge/launcher3/folder/FolderRenameDialog;)I

    move-result v1

    if-eq v0, v1, :cond_25

    .line 164
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$0(Lcom/lge/launcher3/folder/FolderRenameDialog;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-static {v1}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$1(Lcom/lge/launcher3/folder/FolderRenameDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$changeFolderColor(Lcom/android/launcher3/FolderInfo;I)V

    .line 165
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/folder/FolderRenameDialog;->access$2(Lcom/lge/launcher3/folder/FolderRenameDialog;I)V

    .line 167
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$NegativeButtonListener;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    invoke-virtual {v0}, Lcom/lge/launcher3/folder/FolderRenameDialog;->dismiss()V

    .line 168
    return-void
.end method
