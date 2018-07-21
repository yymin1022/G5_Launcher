.class public Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "DisableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/droptarget/DisableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_a

    instance-of v0, v1, Lcom/lge/launcher3/droptarget/DisableActivity;

    if-nez v0, :cond_b

    .line 71
    :cond_a
    :goto_a
    return-void

    :cond_b
    move-object v0, v1

    .line 63
    check-cast v0, Lcom/lge/launcher3/droptarget/DisableActivity;

    .line 64
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1c

    .line 65
    invoke-virtual {v0}, Lcom/lge/launcher3/droptarget/DisableActivity;->startDisableProgress()V

    .line 67
    const v0, 0x7f0f011b

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;IZ)V

    goto :goto_a

    .line 69
    :cond_1c
    invoke-virtual {v0}, Lcom/lge/launcher3/droptarget/DisableActivity;->dispatchAborted()V

    goto :goto_a
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    const v1, 0x7f0f00c6

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    const v1, 0x7f0f00c5

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    const v1, 0x7f0f00be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 77
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_c

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 81
    :cond_c
    return-void
.end method
