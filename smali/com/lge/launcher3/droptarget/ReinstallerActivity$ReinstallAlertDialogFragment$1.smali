.class Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "ReinstallerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->setMessageView(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment$1;->this$1:Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .prologue
    .line 76
    const-string v0, "ISCHECKINREINSTALL"

    .line 77
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment$1;->this$1:Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;

    invoke-static {v1, v0, p2}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->access$0(Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method
