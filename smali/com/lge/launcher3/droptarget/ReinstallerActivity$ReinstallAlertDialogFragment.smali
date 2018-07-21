.class public Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "ReinstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/droptarget/ReinstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReinstallAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->setDoNotShowAgain(Ljava/lang/String;Z)V

    return-void
.end method

.method private setDoNotShowAgain(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "showmoredlgreinstall"

    .line 93
    const/4 v2, 0x0

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method private setMessageView(Landroid/app/AlertDialog$Builder;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 60
    sget v0, Lcom/lge/R$layout;->dialog_c_frame2:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 61
    const v0, 0x1020002

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    sget v1, Lcom/lge/R$layout;->dialog_c_1:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 64
    const v1, 0x1020014

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    const-string v5, "VZW"

    sget-object v6, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 66
    const v5, 0x7f0f016e

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :goto_39
    sget v1, Lcom/lge/R$layout;->dialog_c_11:I

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 71
    const v1, 0x1020001

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 72
    const v5, 0x7f0f00c1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 73
    new-instance v5, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment$1;-><init>(Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 89
    :goto_60
    return-void

    .line 68
    :cond_61
    const v5, 0x7f0f016d

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V
    :try_end_67
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_67} :catch_68

    goto :goto_39

    .line 87
    :catch_68
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhiteTheme  unsupported "

    new-array v2, v7, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_60
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/lge/launcher3/droptarget/ReinstallerActivity;

    if-nez v1, :cond_b

    .line 110
    :cond_a
    :goto_a
    return-void

    .line 104
    :cond_b
    check-cast v0, Lcom/lge/launcher3/droptarget/ReinstallerActivity;

    .line 105
    const/4 v1, -0x1

    if-ne p2, v1, :cond_14

    .line 106
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->access$1(Lcom/lge/launcher3/droptarget/ReinstallerActivity;)V

    goto :goto_a

    .line 108
    :cond_14
    invoke-virtual {v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->dispatchAborted()V

    goto :goto_a
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    const v1, 0x7f0f0163

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 49
    const v1, 0x7f0f0165

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    const v1, 0x7f0f0166

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-direct {p0, v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->setMessageView(Landroid/app/AlertDialog$Builder;)V

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 116
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_c

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 120
    :cond_c
    return-void
.end method
