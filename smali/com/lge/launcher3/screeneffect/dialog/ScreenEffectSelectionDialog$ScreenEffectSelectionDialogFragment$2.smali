.class Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$2;
.super Ljava/lang/Object;
.source "ScreenEffectSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$2;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$2;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/ViewUtils;->traverseToSetClip(Landroid/view/ViewGroup;ZI)V

    .line 126
    return-void
.end method
