.class public Lcom/lge/mdm/util/LGMDMNotifyHelper;
.super Ljava/lang/Object;
.source "LGMDMNotifyHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final TOAST_SHORT_DELAY:I = 0x7d0

.field public static final WINDOW_TOAST_ALREADY_SHOW:I = 0x2

.field public static final WINDOW_TOAST_ERROR:I = 0x0

.field public static final WINDOW_TOAST_HANDLE_OK:I = 0x1

.field private static adDecryption:Landroid/app/AlertDialog;

.field private static dialogOSUpdate:Landroid/app/AlertDialog;

.field private static sDialogExpirePWD:Landroid/app/AlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToastLP:Landroid/view/WindowManager$LayoutParams;

.field private mToastView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Landroid/app/AlertDialog;
    .registers 1

    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1()Landroid/app/AlertDialog;
    .registers 1

    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->dialogOSUpdate:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/mdm/util/LGMDMNotifyHelper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1

    sput-object p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set1(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1

    sput-object p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->dialogOSUpdate:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string/jumbo v0, "LGMDMNotifyHelper"

    sput-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    .line 41
    sput-object v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    .line 37
    iput-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mWindowManager:Landroid/view/WindowManager;

    .line 38
    iput-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    .line 39
    iput-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1f

    .line 51
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mWindowManager:Landroid/view/WindowManager;

    .line 48
    :cond_1f
    return-void
.end method


# virtual methods
.method public dismissChangePasswordDialog()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 171
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 172
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 173
    sput-object v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    .line 170
    :cond_c
    return-void
.end method

.method public dismissDialogDecryption()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 203
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 204
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 205
    sput-object v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    .line 202
    :cond_c
    return-void
.end method

.method public displayDecryptionPolicyDialog(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    .line 178
    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 177
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    sget v1, Lcom/lge/internal/R$drawable;->ic_dialog_alert:I

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 181
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_available_device_un_encryption_NORMAL:I

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    sget v1, Lcom/lge/internal/R$string;->sp_Encryption_SHORT:I

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper$2;

    invoke-direct {v1, p0}, Lcom/lge/mdm/util/LGMDMNotifyHelper$2;-><init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;)V

    const/high16 v2, 0x1040000

    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/lge/mdm/util/LGMDMNotifyHelper$3;-><init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;I)V

    const v2, 0x104000a

    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    .line 199
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 200
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->adDecryption:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 176
    return-void
.end method

.method public handleHideWindowToast()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 121
    sget-object v2, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[handleHideWindowToast] Start."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_1a

    .line 123
    :cond_11
    sget-object v2, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[handleShowWindowToast] Something is null!!"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 126
    :cond_1a
    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    if-eqz v2, :cond_3e

    .line 128
    :try_start_1e
    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    .line 129
    const v3, 0x10a0001

    .line 128
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 130
    .local v0, "ani":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2e

    .line 131
    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_47

    .line 136
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_2e
    :goto_2e
    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 138
    iput-object v4, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    .line 140
    :cond_3e
    sget-object v2, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[handleHideWindowToast] End."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void

    .line 133
    :catch_47
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Can\'t start animation. Because Fail to load it."

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public handleShowWindowToast(Ljava/lang/String;)I
    .registers 14
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const v11, 0x1050016

    const/16 v10, 0x57

    const/4 v1, -0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 56
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[handleShowWindowToast] Start."

    invoke-static {v0, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_21

    .line 58
    :cond_18
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[handleShowWindowToast] Something is null!!"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v9

    .line 61
    :cond_21
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 62
    :cond_29
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[handleShowWindowToast] message is null or empty!!"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v9

    .line 65
    :cond_32
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_76

    .line 66
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Toast already show!!!!"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    .line 68
    sget v1, Lcom/lge/internal/R$id;->text:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 69
    .local v8, "textView":Landroid/widget/TextView;
    if-eqz v8, :cond_51

    .line 70
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_51
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 75
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[handleShowWindowToast] End with ALREADY_SHOW."

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x2

    return v0

    .line 80
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_76
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    .line 81
    sget v2, Lcom/lge/internal/R$layout;->lgmdm_toast_layout:I

    .line 80
    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_f7

    .line 83
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 87
    const/16 v3, 0x7ea

    .line 88
    const/16 v4, 0x18

    .line 90
    const/4 v5, -0x3

    move v2, v1

    .line 84
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    .line 91
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "LGMDMToast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 94
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 95
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 97
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_e3

    .line 99
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    .line 100
    sget v1, Lcom/lge/internal/R$id;->text:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 101
    .restart local v8    # "textView":Landroid/widget/TextView;
    if-eqz v8, :cond_e3

    .line 102
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_e3
    :try_start_e3
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    .line 107
    const/high16 v1, 0x10a0000

    .line 106
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 108
    .local v6, "ani":Landroid/view/animation/Animation;
    if-eqz v6, :cond_f2

    .line 109
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_f2} :catch_101

    .line 114
    .end local v6    # "ani":Landroid/view/animation/Animation;
    :cond_f2
    :goto_f2
    iget-object v0, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mToastView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_f7
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[handleShowWindowToast] End with HANDLE_OK."

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    return v0

    .line 111
    :catch_101
    move-exception v7

    .line 112
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can\'t start animation. Because Fail to load it."

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2
.end method

.method public showChangePasswordDialog(IZ)V
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "lockoutNow"    # Z

    .prologue
    const/4 v4, 0x0

    .line 144
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 145
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 149
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    .line 150
    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 149
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 148
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    sget v1, Lcom/lge/internal/R$string;->password_expired:I

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper$1;

    invoke-direct {v1, p0}, Lcom/lge/mdm/util/LGMDMNotifyHelper$1;-><init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;)V

    const v2, 0x104000a

    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    .line 162
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 163
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 165
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 166
    if-nez p2, :cond_54

    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_54

    .line 167
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->sDialogExpirePWD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    :cond_54
    return-void
.end method

.method public showOSUpdateDialog(Ljava/lang/String;I)V
    .registers 7
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->mContext:Landroid/content/Context;

    .line 210
    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 209
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    sget v1, Lcom/lge/internal/R$string;->sp_title_sw_update_NORMAL:I

    .line 209
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_need_update_software_NORMAL:I

    .line 209
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper$4;

    invoke-direct {v1, p0}, Lcom/lge/mdm/util/LGMDMNotifyHelper$4;-><init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;)V

    const/high16 v2, 0x1040000

    .line 209
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/mdm/util/LGMDMNotifyHelper$5;-><init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;Ljava/lang/String;I)V

    const v2, 0x104000a

    .line 209
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->dialogOSUpdate:Landroid/app/AlertDialog;

    .line 227
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->dialogOSUpdate:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 228
    sget-object v0, Lcom/lge/mdm/util/LGMDMNotifyHelper;->dialogOSUpdate:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 208
    return-void
.end method
