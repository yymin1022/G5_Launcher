.class public Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIResetPasswordAdapter.java"


# static fields
.field private static singletone:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;


# instance fields
.field private adRecoveryPassword:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mPM:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->showRecoveryPasswordMismatchDialog()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->singletone:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->singletone:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    .line 39
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->singletone:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    return-object v0
.end method

.method private showRecoveryPasswordMismatchDialog()V
    .registers 6

    .prologue
    .line 179
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 180
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 179
    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    sget v2, Lcom/lge/internal/R$string;->sp_recovery_password_NORMAL:I

    .line 179
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 182
    sget v2, Lcom/lge/internal/R$string;->sp_mdm_recovery_password_not_match:I

    .line 179
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 183
    new-instance v2, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$7;

    invoke-direct {v2, p0}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$7;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)V

    const v3, 0x104000a

    .line 179
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    .local v0, "sConfirmDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 178
    return-void
.end method


# virtual methods
.method public dismissResetPasswordDialog()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 194
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 195
    iput-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    .line 192
    :cond_14
    return-void
.end method

.method public showResetPasswordDialog(Landroid/content/Context;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mContext:Landroid/content/Context;

    .line 44
    iget-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mPM:Landroid/os/PowerManager;

    .line 45
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v7

    .line 47
    .local v7, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    new-instance v10, Landroid/view/ContextThemeWrapper;

    .line 48
    iget-object v11, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mContext:Landroid/content/Context;

    sget v12, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 47
    invoke-direct {v10, v11, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 49
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v10, Lcom/lge/internal/R$layout;->password_dialog:I

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 51
    .local v5, "layout":Landroid/view/View;
    sget v10, Lcom/lge/internal/R$id;->enter_password:I

    .line 50
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 53
    .local v2, "entercode":Landroid/widget/EditText;
    sget v10, Lcom/lge/internal/R$id;->description:I

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, "description":Landroid/widget/TextView;
    if-eqz v1, :cond_44

    .line 55
    invoke-virtual {v7}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getPasswordRecoveryByEas()Z

    move-result v10

    if-eqz v10, :cond_df

    .line 56
    sget v10, Lcom/lge/internal/R$string;->reset_password_description:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 62
    :cond_44
    :goto_44
    sget v10, Lcom/lge/internal/R$id;->recovery_password_visible_check:I

    .line 61
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 63
    .local v6, "mVisibleCheckBox":Landroid/widget/CheckBox;
    if-eqz v6, :cond_5b

    .line 64
    sget v10, Lcom/lge/internal/R$string;->sp_lgmdm_make_visible_NORMAL:I

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 66
    new-instance v10, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;

    invoke-direct {v10, p0, v2}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;Landroid/widget/EditText;)V

    .line 65
    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    :cond_5b
    new-instance v3, Landroid/view/GestureDetector;

    iget-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mContext:Landroid/content/Context;

    .line 84
    new-instance v11, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$2;

    invoke-direct {v11, p0}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$2;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)V

    .line 83
    invoke-direct {v3, v10, v11}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 113
    .local v3, "gestureDetector":Landroid/view/GestureDetector;
    new-instance v10, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$3;

    invoke-direct {v10, p0, v3}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$3;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;Landroid/view/GestureDetector;)V

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    .line 120
    iget-object v11, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mContext:Landroid/content/Context;

    sget v12, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 119
    invoke-direct {v10, v11, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "aDialog":Landroid/app/AlertDialog$Builder;
    sget v10, Lcom/lge/internal/R$string;->sp_recovery_password_NORMAL:I

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 124
    sget v10, Lcom/lge/internal/R$string;->reset_password_next:I

    .line 125
    new-instance v11, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;

    invoke-direct {v11, p0, v7, v2, p2}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$4;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;Landroid/widget/EditText;I)V

    .line 124
    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    sget v10, Lcom/lge/internal/R$string;->reset_password_back:I

    .line 145
    new-instance v11, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$5;

    invoke-direct {v11, p0}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$5;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)V

    .line 144
    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    .line 150
    iget-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1120011

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_b9

    .line 151
    iget-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x4

    .line 152
    const/4 v12, 0x4

    .line 151
    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 154
    :cond_b9
    iget-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d9

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 155
    iget-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 157
    iget-object v10, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->adRecoveryPassword:Landroid/app/AlertDialog;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 158
    .local v8, "positiveButton":Landroid/widget/Button;
    new-instance v9, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;

    invoke-direct {v9, p0, v8, v2}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;Landroid/widget/Button;Landroid/widget/EditText;)V

    .line 172
    .local v9, "watcher":Landroid/text/TextWatcher;
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    if-eqz v8, :cond_de

    .line 174
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 42
    :cond_de
    return-void

    .line 58
    .end local v0    # "aDialog":Landroid/app/AlertDialog$Builder;
    .end local v3    # "gestureDetector":Landroid/view/GestureDetector;
    .end local v6    # "mVisibleCheckBox":Landroid/widget/CheckBox;
    .end local v8    # "positiveButton":Landroid/widget/Button;
    .end local v9    # "watcher":Landroid/text/TextWatcher;
    :cond_df
    sget v10, Lcom/lge/internal/R$string;->sp_lgmdm_recovery_password_NORMAL:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_44
.end method
