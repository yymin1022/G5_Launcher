.class Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;
.super Ljava/lang/Object;
.source "ScreenEffectSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    move-result-object v0

    if-nez v0, :cond_9

    .line 114
    :cond_8
    :goto_8
    return-void

    .line 104
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->getCheckedItemPosition()I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)I

    move-result v1

    if-eq v1, v0, :cond_8

    .line 109
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->access$2(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->putSelectedScreenEffect(Landroid/content/Context;I)V

    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_8
.end method
