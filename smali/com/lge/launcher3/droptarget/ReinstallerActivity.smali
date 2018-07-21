.class public Lcom/lge/launcher3/droptarget/ReinstallerActivity;
.super Landroid/app/Activity;
.source "ReinstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;
    }
.end annotation


# static fields
.field public static final PREF_DO_NOT_SHOW_AGAIN:Ljava/lang/String; = "showmoredlgreinstall"

.field public static final PREF_KEY_REINSTALL:Ljava/lang/String; = "ISCHECKINREINSTALL"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/lge/launcher3/droptarget/ReinstallerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/droptarget/ReinstallerActivity;)V
    .registers 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->startRUActivity()V

    return-void
.end method

.method private showConfirmationDialog()V
    .registers 2

    .prologue
    .line 145
    new-instance v0, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;

    invoke-direct {v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity$ReinstallAlertDialogFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;)V

    .line 146
    return-void
.end method

.method private showDialogFragment(Landroid/app/DialogFragment;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_16

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 154
    :cond_16
    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private startRUActivity()V
    .registers 4

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_RECENTUNINSTALL:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method


# virtual methods
.method dispatchAborted()V
    .registers 1

    .prologue
    .line 164
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 170
    invoke-virtual {p0, v0, v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->overridePendingTransition(II)V

    .line 171
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->requestWindowFeature(I)Z

    .line 128
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->setTheme()V

    .line 129
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->showConfirmationDialog()V

    .line 130
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->finish()V

    .line 177
    return-void
.end method

.method public setTheme()V
    .registers 4

    .prologue
    .line 135
    :try_start_0
    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    .line 136
    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->setTheme(I)V

    .line 138
    :cond_b
    sget v0, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->setTheme(I)V
    :try_end_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_10} :catch_11

    .line 142
    :goto_10
    return-void

    .line 140
    :catch_11
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/droptarget/ReinstallerActivity;->TAG:Ljava/lang/String;

    const-string v1, "WhiteTheme  unsupported "

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_10
.end method
