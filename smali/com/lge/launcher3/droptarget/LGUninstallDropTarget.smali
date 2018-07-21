.class public Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;
.super Lcom/android/launcher3/UninstallDropTarget;
.source "LGUninstallDropTarget.java"


# static fields
.field private static final REQUEST_CODE_LG_UNINSTALL_ACTIVITY:I


# instance fields
.field private mIsRemove:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/UninstallDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->mIsRemove:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;)V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->startReinstallerActivity()V

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;Lcom/android/launcher3/DragSource;Z)V
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->sendUninstallResult(Lcom/android/launcher3/DragSource;Z)V

    return-void
.end method

.method private isCheckedReintallerDoNotShowAgain()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "showmoredlgreinstall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_13

    .line 110
    const-string v2, "ISCHECKINREINSTALL"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    :cond_13
    return v0
.end method

.method private startReinstallerActivity()V
    .registers 4

    .prologue
    .line 99
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->isCheckedReintallerDoNotShowAgain()Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->mIsRemove:Z

    if-eqz v0, :cond_28

    .line 100
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_REINSTALL_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    :cond_28
    return-void
.end method


# virtual methods
.method protected completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 43
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 44
    iput-boolean v4, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->mIsRemove:Z

    .line 45
    iget-object v2, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->startUninstallActivityForResult(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 46
    new-instance v2, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$1;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$1;-><init>(Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;)V

    .line 52
    iget-object v3, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 53
    new-instance v2, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$2;-><init>(Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;Landroid/util/Pair;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 66
    :goto_2d
    return-void

    .line 64
    :cond_2e
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {p0, v0, v4}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->sendUninstallResult(Lcom/android/launcher3/DragSource;Z)V

    goto :goto_2d
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_c

    .line 125
    :cond_3
    :goto_3
    return-void

    .line 119
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->mIsRemove:Z

    goto :goto_3

    .line 117
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public startUninstallActivityForResult(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {p1}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 70
    :cond_d
    invoke-static {p1, p2}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->startUninstallActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    move-result v0

    .line 94
    :goto_11
    return v0

    .line 73
    :cond_12
    invoke-static {p2}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 74
    check-cast p2, Lcom/android/launcher3/ItemInfo;

    iget-object v3, p2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 76
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 77
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 79
    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_36

    .line 82
    const v0, 0x7f0f003b

    .line 83
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 84
    goto :goto_11

    .line 86
    :cond_36
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_DELETE_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "package"

    invoke-static {v6, v1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89
    const/high16 v0, 0x20800000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    if-eqz v3, :cond_5f

    .line 91
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v3, v4, v0}, Lcom/android/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 93
    :cond_5f
    invoke-virtual {p0, v4, v2}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    const/4 v0, 0x1

    goto :goto_11
.end method
