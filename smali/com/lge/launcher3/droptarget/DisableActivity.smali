.class public Lcom/lge/launcher3/droptarget/DisableActivity;
.super Landroid/app/Activity;
.source "DisableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;,
        Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDialog:Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;

.field private mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/lge/launcher3/droptarget/DisableActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/droptarget/DisableActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private disable()V
    .registers 5

    .prologue
    .line 192
    sget-object v0, Lcom/lge/launcher3/droptarget/DisableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disable Package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageName:Ljava/lang/String;

    .line 194
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 195
    return-void
.end method

.method private showConfirmationDialog()V
    .registers 2

    .prologue
    .line 174
    new-instance v0, Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;

    invoke-direct {v0}, Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialog:Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;

    .line 175
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialog:Lcom/lge/launcher3/droptarget/DisableActivity$DisableAlertDialogFragment;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/droptarget/DisableActivity;->showDialogFragment(Landroid/app/DialogFragment;)V

    .line 176
    return-void
.end method

.method private showDialogFragment(Landroid/app/DialogFragment;)V
    .registers 5

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_17

    .line 182
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 184
    :cond_17
    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 185
    return-void
.end method


# virtual methods
.method dispatchAborted()V
    .registers 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-eqz v0, :cond_1a

    .line 200
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->callback:Landroid/os/IBinder;

    .line 199
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    .line 202
    :try_start_12
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageName:Ljava/lang/String;

    const/4 v2, -0x5

    .line 203
    const-string v3, "Cancelled by user"

    .line 202
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b

    .line 209
    :cond_1a
    :goto_1a
    return-void

    .line 204
    :catch_1b
    move-exception v0

    .line 206
    sget-object v1, Lcom/lge/launcher3/droptarget/DisableActivity;->TAG:Ljava/lang/String;

    const-string v2, "dispatchAborted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public finish()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 215
    invoke-virtual {p0, v0, v0}, Lcom/lge/launcher3/droptarget/DisableActivity;->overridePendingTransition(II)V

    .line 216
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/DisableActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity;->setTheme()V

    .line 106
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 108
    if-nez v2, :cond_1d

    .line 109
    sget-object v0, Lcom/lge/launcher3/droptarget/DisableActivity;->TAG:Ljava/lang/String;

    const-string v1, "No package URI in intent"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_1c
    return-void

    .line 113
    :cond_1d
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageName:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_3c

    .line 115
    sget-object v0, Lcom/lge/launcher3/droptarget/DisableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid package name in URI: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 120
    :cond_3c
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 122
    new-instance v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    invoke-direct {v0}, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    .line 124
    iget-object v4, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, v4, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 125
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_67

    .line 126
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 129
    :cond_67
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    const-string v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->allUsers:Z

    .line 130
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    const-string v4, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->callback:Landroid/os/IBinder;

    .line 133
    :try_start_7b
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    iget-object v1, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageName:Ljava/lang/String;

    .line 134
    const/16 v4, 0x2000

    iget-object v5, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    iget-object v5, v5, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 133
    invoke-interface {v3, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8f} :catch_ad

    .line 139
    :goto_8f
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    iget-object v0, v0, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_b6

    .line 140
    sget-object v0, Lcom/lge/launcher3/droptarget/DisableActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid packageName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 136
    :catch_ad
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/droptarget/DisableActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get packageName. Package manager is dead?"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 145
    :cond_b6
    invoke-virtual {v2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_d4

    .line 148
    :try_start_bc
    iget-object v1, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    .line 149
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    iget-object v4, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mDialogInfo:Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;

    iget-object v4, v4, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 148
    invoke-interface {v3, v2, v0, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/lge/launcher3/droptarget/DisableActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_d4} :catch_e3

    .line 157
    :cond_d4
    :goto_d4
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/droptarget/DisableActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 158
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/DisableActivity;->showConfirmationDialog()V

    goto/16 :goto_1c

    .line 152
    :catch_e3
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/droptarget/DisableActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get className. Package manager is dead?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableActivity;->finish()V

    .line 222
    return-void
.end method

.method public setTheme()V
    .registers 4

    .prologue
    .line 164
    :try_start_0
    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    .line 165
    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/DisableActivity;->setTheme(I)V

    .line 167
    :cond_b
    sget v0, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/DisableActivity;->setTheme(I)V
    :try_end_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_10} :catch_11

    .line 171
    :goto_10
    return-void

    .line 169
    :catch_11
    move-exception v0

    const-string v0, "WhiteTheme"

    const-string v1, "WhiteTheme  unsupported "

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_10
.end method

.method startDisableProgress()V
    .registers 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/DisableActivity;->disable()V

    .line 189
    return-void
.end method
