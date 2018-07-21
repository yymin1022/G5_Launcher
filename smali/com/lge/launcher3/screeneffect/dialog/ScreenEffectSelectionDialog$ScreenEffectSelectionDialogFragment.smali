.class Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;
.super Landroid/app/DialogFragment;
.source "ScreenEffectSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenEffectSelectionDialogFragment"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOldPosition:I

.field private mOrientation:I

.field private mPositiveListerner:Landroid/content/DialogInterface$OnClickListener;

.field private mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mContext:Landroid/content/Context;

    .line 65
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mPositiveListerner:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    iput v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOldPosition:I

    .line 68
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    .line 69
    iput v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOrientation:I

    .line 77
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mPositiveListerner:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    invoke-static {p1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getSelectedScreenEffect(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOldPosition:I

    .line 82
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    invoke-direct {v0, p1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    .line 83
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    iget v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOldPosition:I

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->setItemCheckedAndSelection(I)V

    .line 85
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOrientation:I

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOldPosition:I

    return v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mPositiveListerner:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOrientation:I

    if-eq v0, v1, :cond_12

    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->reset()V

    .line 149
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOrientation:I

    .line 151
    :cond_12
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    const v1, 0x7f0f00fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v1, 0x7f0f0028

    new-instance v2, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$1;-><init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    const v1, 0x7f0f0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment$2;-><init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 128
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mOrientation:I

    .line 161
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->destroy()V

    .line 163
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    .line 166
    :cond_12
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mPositiveListerner:Landroid/content/DialogInterface$OnClickListener;

    .line 167
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mContext:Landroid/content/Context;

    .line 168
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog$ScreenEffectSelectionDialogFragment;->mScreenEffectListLayout:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->reset()V

    .line 138
    return-void
.end method
