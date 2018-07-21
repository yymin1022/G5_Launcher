.class public Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/droptarget/UninstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninstallAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->setDoNotShowAgain(Ljava/lang/String;Z)V

    return-void
.end method

.method private setDoNotShowAgain(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "showmoredlgdisableuninstall"

    .line 130
    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void
.end method

.method private setMessage(Landroid/app/AlertDialog$Builder;)V
    .registers 5

    .prologue
    .line 90
    const v0, 0x7f0f00bb

    .line 91
    const-string v1, "Widgets"

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 92
    const v0, 0x7f0f00bd

    .line 94
    :cond_12
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 95
    return-void
.end method

.method private setMessageView(Landroid/app/AlertDialog$Builder;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 101
    sget v0, Lcom/lge/R$layout;->dialog_c_frame:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    sget v1, Lcom/lge/R$layout;->dialog_c_1:I

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 104
    const v1, 0x1020014

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    const v4, 0x7f0f00bc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 107
    sget v1, Lcom/lge/R$layout;->dialog_c_11:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 108
    const v1, 0x1020001

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 109
    const v4, 0x7f0f00c1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 110
    new-instance v4, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment$1;-><init>(Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    :try_end_4f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_4f} :catch_50

    .line 126
    :goto_4f
    return-void

    .line 124
    :catch_50
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhiteTheme  unsupported "

    new-array v2, v5, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_4f
.end method

.method private setupMessage(Landroid/app/AlertDialog$Builder;)V
    .registers 4

    .prologue
    .line 82
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Widgets"

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 83
    invoke-direct {p0, p1}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->setMessageView(Landroid/app/AlertDialog$Builder;)V

    .line 87
    :goto_19
    return-void

    .line 85
    :cond_1a
    invoke-direct {p0, p1}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->setMessage(Landroid/app/AlertDialog$Builder;)V

    goto :goto_19
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    .prologue
    const/4 v4, -0x1

    .line 136
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_b

    instance-of v0, v1, Lcom/lge/launcher3/droptarget/UninstallerActivity;

    if-nez v0, :cond_c

    .line 158
    :cond_b
    :goto_b
    return-void

    :cond_c
    move-object v0, v1

    .line 141
    check-cast v0, Lcom/lge/launcher3/droptarget/UninstallerActivity;

    .line 142
    if-ne p2, v4, :cond_46

    .line 143
    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v2}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 144
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->access$1(Lcom/lge/launcher3/droptarget/UninstallerActivity;)V

    .line 145
    const-string v2, "Widgets"

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "Workspace"

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 146
    :cond_34
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->access$2(Lcom/lge/launcher3/droptarget/UninstallerActivity;)V

    .line 151
    :cond_37
    :goto_37
    invoke-virtual {v0, v4}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->setResult(I)V

    .line 153
    const v0, 0x7f0f0119

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;IZ)V

    goto :goto_b

    .line 149
    :cond_42
    invoke-virtual {v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->startUninstallProgress()V

    goto :goto_37

    .line 155
    :cond_46
    invoke-virtual {v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->dispatchAborted()V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/droptarget/UninstallerActivity;->setResult(I)V

    goto :goto_b
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    const v1, 0x7f0f00c9

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    const v1, 0x7f0f00c7

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-direct {p0, v0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->setupMessage(Landroid/app/AlertDialog$Builder;)V

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 164
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_c

    .line 166
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 168
    :cond_c
    return-void
.end method
