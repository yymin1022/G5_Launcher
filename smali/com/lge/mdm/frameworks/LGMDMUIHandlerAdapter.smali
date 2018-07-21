.class public Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIHandlerAdapter.java"


# static fields
.field private static final MSG_CCMODECHANGENOTYDIALOG:I = 0xbbf

.field private static final MSG_HIDE_WINDOWTOAST:I = 0x7d3

.field private static final MSG_SHOWCHANGEDIALOG:I = 0x4b1

.field private static final MSG_SHOWCHANGEWARNINGDIALOG:I = 0xbbe

.field private static final MSG_SHOWSAFEMODEBLOCK_DIALOG:I = 0xbc0

.field private static final MSG_SHOW_RESET_PASSWORD_DIALOG:I = 0x4b2

.field private static final MSG_SHOW_TOAST:I = 0x7d1

.field private static final MSG_SHOW_WINDOWTOAST:I = 0x7d2

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogCCmodeNoty:Landroid/app/AlertDialog;

.field private mDialogExpireWarningPWD:Landroid/app/AlertDialog;

.field private mDialogSafeMode:Landroid/app/AlertDialog;

.field mHandler:Landroid/os/Handler;

.field private mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogSafeMode:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Lcom/lge/mdm/util/LGMDMNotifyHelper;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogSafeMode:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;ILandroid/content/ComponentName;)V
    .registers 3
    .param p1, "userHandle"    # I
    .param p2, "who"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showCCmodeChangeNotyDialog(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;I)V
    .registers 2
    .param p1, "expireDay"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showChangePasswordDialogWarning(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showChangePasswordDialog(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showSafeModeBlockDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .line 66
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "LGMDMUIHandlerAdapter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "t":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 68
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 69
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_18

    .line 70
    return-void

    .line 72
    :cond_18
    new-instance v2, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$1;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    .line 62
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    return-object v0
.end method

.method private showCCmodeChangeNotyDialog(ILandroid/content/ComponentName;)V
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 227
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 228
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 229
    sget v4, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 228
    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    sget v2, Lcom/lge/internal/R$string;->sp_dlg_note_NORMAL:I

    .line 228
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 231
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_cc_mode_message:I

    .line 228
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 232
    sget v2, Lcom/lge/internal/R$string;->alert_dialog_no:I

    .line 233
    new-instance v3, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$3;

    invoke-direct {v3, p0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$3;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)V

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 238
    sget v2, Lcom/lge/internal/R$string;->alert_dialog_yes:I

    .line 239
    new-instance v3, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;Landroid/content/ComponentName;I)V

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogCCmodeNoty:Landroid/app/AlertDialog;

    .line 244
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogCCmodeNoty:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 245
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogCCmodeNoty:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 226
    return-void
.end method

.method private showChangePasswordDialog(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    if-nez v2, :cond_e

    .line 174
    new-instance v2, Lcom/lge/mdm/util/LGMDMNotifyHelper;

    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lge/mdm/util/LGMDMNotifyHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .line 176
    :cond_e
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 177
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v1, v4}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLockoutNow(Landroid/content/ComponentName;)Z

    move-result v0

    .line 178
    .local v0, "lockoutNow":Z
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    invoke-virtual {v2, p1, v0}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->showChangePasswordDialog(IZ)V

    .line 172
    return-void
.end method

.method private showChangePasswordDialogWarning(I)V
    .registers 9
    .param p1, "expireDay"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 203
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogExpireWarningPWD:Landroid/app/AlertDialog;

    if-nez v0, :cond_53

    .line 204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 205
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 204
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->password_expire_warn:I

    new-array v3, v4, [Ljava/lang/Object;

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 207
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$2;

    invoke-direct {v1, p0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$2;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)V

    const v2, 0x1040013

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 217
    const v1, 0x1040009

    .line 204
    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogExpireWarningPWD:Landroid/app/AlertDialog;

    .line 222
    :goto_42
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogExpireWarningPWD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 223
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogExpireWarningPWD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 202
    return-void

    .line 219
    :cond_53
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogExpireWarningPWD:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 220
    sget v2, Lcom/lge/internal/R$string;->password_expire_warn:I

    .line 219
    new-array v3, v4, [Ljava/lang/Object;

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 219
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_42
.end method

.method private showNotificationChangePasswordDialogWarning(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "expireDay"    # I

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 194
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_7

    .line 195
    return-void

    .line 197
    :cond_7
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xbbe

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 199
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method

.method private showSafeModeBlockDialog()V
    .registers 5

    .prologue
    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 274
    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    .line 273
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_safe_mode_title_NORMAL:I

    .line 273
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 276
    sget v1, Lcom/lge/internal/R$string;->sp_lgmdm_block_safe_mode_message_NORMAL:I

    .line 273
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    sget v1, Lcom/lge/internal/R$string;->dlg_ok:I

    new-instance v2, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$5;

    invoke-direct {v2, p0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$5;-><init>(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)V

    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogSafeMode:Landroid/app/AlertDialog;

    .line 285
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogSafeMode:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 286
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogSafeMode:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 272
    return-void
.end method


# virtual methods
.method public changePasswordDialogWarning(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lp"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x7

    .line 250
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getInstance()Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    move-result-object v1

    .line 251
    .local v1, "lockScreenAdapter":Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    if-eqz v1, :cond_20

    .line 252
    invoke-virtual {v1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    .line 253
    .local v0, "expireDay":I
    invoke-virtual {v1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getRequestedPasswordExpiration(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v2

    if-le v2, v3, :cond_20

    .line 254
    invoke-virtual {v1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v2

    if-gt v2, v3, :cond_20

    .line 255
    invoke-virtual {v1, p2, p3}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v2

    if-lez v2, :cond_20

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showNotificationChangePasswordDialogWarning(Landroid/content/Context;I)V

    .line 248
    .end local v0    # "expireDay":I
    :cond_20
    return-void
.end method

.method public dismissDialogForLockout(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 182
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 183
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    if-eqz v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    invoke-virtual {v0}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->dismissChangePasswordDialog()V

    .line 186
    :cond_c
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogExpireWarningPWD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 187
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogExpireWarningPWD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    iput-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mDialogExpireWarningPWD:Landroid/app/AlertDialog;

    .line 181
    :cond_17
    return-void
.end method

.method public notyCCmodeChangeDialog(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 263
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_7

    .line 264
    return-void

    .line 266
    :cond_7
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xbbf

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 267
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 269
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    return-void
.end method

.method public safeModeBlockDialog(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 291
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_7

    .line 292
    return-void

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xbc0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 295
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    return-void
.end method

.method public showPasswordDialog(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 130
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_7

    .line 131
    return-void

    .line 133
    :cond_7
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 135
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method

.method public showResetPasswordDialog(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 140
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_7

    .line 141
    return-void

    .line 143
    :cond_7
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 145
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/16 v4, 0x7d3

    .line 149
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mContext:Landroid/content/Context;

    .line 150
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_9

    .line 151
    return-void

    .line 154
    :cond_9
    if-nez p3, :cond_1d

    .line 155
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 158
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    :goto_1c
    return-void

    .line 160
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1d
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    if-nez v1, :cond_28

    .line 161
    new-instance v1, Lcom/lge/mdm/util/LGMDMNotifyHelper;

    invoke-direct {v1, p1}, Lcom/lge/mdm/util/LGMDMNotifyHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mNotifyHelper:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .line 163
    :cond_28
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 164
    .restart local v0    # "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 166
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->mHandler:Landroid/os/Handler;

    .line 169
    const-wide/16 v2, 0x7d0

    .line 168
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c
.end method
