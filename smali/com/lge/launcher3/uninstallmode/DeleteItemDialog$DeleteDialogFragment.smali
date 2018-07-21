.class Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;
.super Landroid/app/DialogFragment;
.source "DeleteItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/uninstallmode/DeleteItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteDialogFragment"
.end annotation


# instance fields
.field private mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private mIsSuccess:Z

.field private mItemInfo:Lcom/android/launcher3/ItemInfo;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 62
    iput-object v1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 63
    iput-object v1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mView:Landroid/view/View;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mIsSuccess:Z

    .line 65
    iput-object v1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 73
    iput-object p1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 74
    iput-object p2, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 75
    iput-object p3, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mView:Landroid/view/View;

    .line 76
    iput-object p4, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)Lcom/android/launcher3/ItemInfo;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mItemInfo:Lcom/android/launcher3/ItemInfo;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;Z)V
    .registers 2

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mIsSuccess:Z

    return-void
.end method

.method private getMessageResId(Lcom/android/launcher3/ItemInfo;)I
    .registers 4

    .prologue
    .line 106
    const/4 v0, -0x1

    .line 107
    instance-of v1, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_9

    .line 108
    const v0, 0x7f0f00c0

    .line 112
    :cond_8
    :goto_8
    return v0

    .line 109
    :cond_9
    instance-of v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_8

    .line 110
    const v0, 0x7f0f00bf

    goto :goto_8
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object v1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mItemInfo:Lcom/android/launcher3/ItemInfo;

    invoke-direct {p0, v1}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->getMessageResId(Lcom/android/launcher3/ItemInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 85
    const v1, 0x7f0f007d

    new-instance v2, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment$1;-><init>(Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v1, 0x7f0f00c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 144
    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 145
    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 146
    iput-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mView:Landroid/view/View;

    .line 147
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 121
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_16

    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 123
    instance-of v1, v0, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    if-eqz v1, :cond_16

    .line 124
    check-cast v0, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    iget-boolean v1, p0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->mIsSuccess:Z

    invoke-interface {v0, v1}, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;->onUninstallActivityReturned(Z)V

    .line 127
    :cond_16
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 135
    invoke-virtual {p0}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->dismiss()V

    .line 136
    return-void
.end method
