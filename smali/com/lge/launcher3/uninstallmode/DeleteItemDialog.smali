.class public Lcom/lge/launcher3/uninstallmode/DeleteItemDialog;
.super Ljava/lang/Object;
.source "DeleteItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialogFragment(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    .prologue
    .line 40
    if-eqz p3, :cond_9

    iget-object v0, p3, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/lge/launcher3/dragndrop/ConeShortcut;

    if-eqz v0, :cond_9

    .line 56
    :goto_8
    return-void

    .line 44
    :cond_9
    const-class v0, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_20

    .line 50
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 53
    :cond_20
    new-instance v1, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/lge/launcher3/uninstallmode/DeleteItemDialog$DeleteDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_8
.end method
