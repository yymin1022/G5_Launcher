.class Lcom/android/launcher3/LauncherClings;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DISABLE_CLINGS:Z = false

.field private static final DISMISS_CLING_DURATION:I = 0xc8

.field private static final MIGRATION_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.migration.dismissed"

.field private static final SHOW_CLING_DURATION:I = 0xfa

.field private static final SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"

.field private static final TAG_CROP_TOP_AND_SIDES:Ljava/lang/String; = "crop_bg_top_and_sides"

.field private static final WORKSPACE_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.workspace.dismissed"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    return-void
.end method

.method private areClingsEnabled()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    :cond_8
    :goto_8
    return v2

    .line 227
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 228
    const-string v3, "accessibility"

    .line 227
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 229
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_55

    move v0, v1

    .line 237
    :goto_20
    iget-object v3, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 238
    if-eqz v0, :cond_45

    array-length v0, v3

    if-nez v0, :cond_45

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 240
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    const-string v3, "no_modify_accounts"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 245
    :cond_45
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "skip_first_use_hints"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_8

    move v2, v1

    .line 249
    goto :goto_8

    :cond_55
    move v0, v2

    .line 236
    goto :goto_20
.end method

.method private dismissMigrationCling()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->showWorkspaceSearchAndHotseat()V

    .line 108
    new-instance v0, Lcom/android/launcher3/LauncherClings$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherClings$1;-><init>(Lcom/android/launcher3/LauncherClings;)V

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public static synchonouslyMarkFirstRunClingDismissed(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 261
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    const-string v1, "cling_gel.workspace.dismissed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    return-void
.end method


# virtual methods
.method dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 196
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    .line 197
    new-instance v0, Lcom/android/launcher3/LauncherClings$5;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/LauncherClings$5;-><init>(Lcom/android/launcher3/LauncherClings;Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 208
    if-gtz p4, :cond_15

    .line 209
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 214
    :cond_14
    :goto_14
    return-void

    .line 211
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_14
.end method

.method dismissLongPressCling()V
    .registers 3

    .prologue
    .line 182
    new-instance v0, Lcom/android/launcher3/LauncherClings$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherClings$4;-><init>(Lcom/android/launcher3/LauncherClings;)V

    .line 188
    iget-object v1, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 68
    const v1, 0x7f0e009e

    if-ne v0, v1, :cond_f

    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/LauncherClings;->dismissMigrationCling()V

    .line 89
    :cond_e
    :goto_e
    return-void

    .line 71
    :cond_f
    const v1, 0x7f0e009d

    if-ne v0, v1, :cond_3d

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 75
    const/16 v1, -0x3e9

    .line 76
    const/4 v2, 0x3

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->startLoader(II)V

    .line 79
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    const-string v1, "launcher.user_migrated_from_old_data"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    invoke-direct {p0}, Lcom/android/launcher3/LauncherClings;->dismissMigrationCling()V

    goto :goto_e

    .line 86
    :cond_3d
    const v1, 0x7f0e009a

    if-ne v0, v1, :cond_e

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherClings;->dismissLongPressCling()V

    goto :goto_e
.end method

.method public shouldShowFirstRunOrMigrationClings()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 254
    invoke-direct {p0}, Lcom/android/launcher3/LauncherClings;->areClingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 255
    const-string v2, "cling_gel.workspace.dismissed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 256
    const-string v2, "cling_gel.migration.dismissed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 254
    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public showLongPressCling(Z)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002d

    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 127
    new-instance v0, Lcom/android/launcher3/LauncherClings$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherClings$2;-><init>(Lcom/android/launcher3/LauncherClings;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 137
    const v0, 0x7f0e0099

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_66

    const v0, 0x7f04002f

    :goto_30
    invoke-virtual {v1, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 140
    const v0, 0x7f0e009a

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const-string v0, "crop_bg_top_and_sides"

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 143
    new-instance v0, Lcom/android/launcher3/BorderCropDrawable;

    iget-object v1, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/BorderCropDrawable;-><init>(Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 145
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_60
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    if-eqz p1, :cond_6a

    .line 179
    :goto_65
    return-void

    .line 139
    :cond_66
    const v0, 0x7f04002e

    goto :goto_30

    .line 156
    :cond_6a
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/LauncherClings$3;

    invoke-direct {v1, p0, v7}, Lcom/android/launcher3/LauncherClings$3;-><init>(Lcom/android/launcher3/LauncherClings;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_65
.end method

.method public showMigrationCling()V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->hideWorkspaceSearchAndHotseat()V

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 101
    iget-object v1, p0, Lcom/android/launcher3/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040030

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method
