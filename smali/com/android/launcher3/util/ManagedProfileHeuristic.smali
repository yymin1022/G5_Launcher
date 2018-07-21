.class public Lcom/android/launcher3/util/ManagedProfileHeuristic;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final AUTO_ADD_TO_FOLDER_DURATION:J = 0x1b77400L

.field private static final INSTALLED_PACKAGES_PREFIX:Ljava/lang/String; = "installed_packages_for_user_"

.field private static final TAG:Ljava/lang/String; = "ManagedProfileHeuristic"

.field private static final USER_FOLDER_ID_PREFIX:Ljava/lang/String; = "user_folder_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHomescreenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mPackageSetKey:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mUser:Lcom/android/launcher3/compat/UserHandleCompat;

.field private final mUserCreationTime:J

.field private final mUserSerial:J

.field private mWorkFolderApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 92
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 94
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUserSerial:J

    .line 96
    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserCreationTime(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUserCreationTime:J

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installed_packages_for_user_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const-string v1, "com.android.launcher3.managedusers.prefs"

    .line 100
    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    return-void
.end method

.method private static addAllUserKeys(JLjava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installed_packages_for_user_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user_folder_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method private finalizeAdditions(Z)V
    .registers 5

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->finalizeWorkFolder()V

    .line 225
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 228
    :cond_16
    return-void
.end method

.method private finalizeWorkFolder()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    :goto_a
    return-void

    .line 155
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/util/ManagedProfileHeuristic$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/ManagedProfileHeuristic$1;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user_folder_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 167
    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_48

    invoke-virtual {v2, v5}, Lcom/android/launcher3/FolderInfo;->hasOption(I)Z

    move-result v3

    if-nez v3, :cond_50

    .line 171
    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 174
    :cond_50
    iget-object v3, v2, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 178
    new-instance v1, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v1}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v3, Lcom/android/launcher3/util/ManagedProfileHeuristic$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic$2;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 189
    :cond_69
    new-instance v1, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const v2, 0x7f0f001d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 191
    const/4 v0, 0x0

    invoke-virtual {v1, v5, v4, v0}, Lcom/android/launcher3/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object v0, v1, Lcom/android/launcher3/FolderInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v3, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user_folder_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    iget-wide v0, v1, Lcom/android/launcher3/FolderInfo;->id:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    goto/16 :goto_a

    .line 195
    :cond_c4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 196
    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_87
.end method

.method public static get(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/util/ManagedProfileHeuristic;
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 72
    new-instance v0, Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;-><init>(Landroid/content/Context;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 74
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getUserApps(Ljava/util/HashSet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 295
    if-nez v0, :cond_d

    .line 296
    const/4 v0, 0x0

    .line 299
    :goto_c
    return v0

    .line 298
    :cond_d
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 299
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static markExistingUsersForNoFolderCreation(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 338
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    .line 339
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    .line 341
    const/4 v1, 0x0

    .line 342
    invoke-virtual {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    .line 357
    return-void

    .line 342
    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 343
    invoke-virtual {v3, v0}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 347
    if-nez v1, :cond_2d

    .line 349
    const-string v1, "com.android.launcher3.managedusers.prefs"

    .line 350
    const/4 v5, 0x0

    .line 348
    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 352
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "user_folder_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 354
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-interface {v5, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_11
.end method

.method private markForAddition(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;J)V
    .registers 8

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUserCreationTime:J

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-gtz v0, :cond_16

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 145
    :goto_c
    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher3/ShortcutInfo;->fromActivityInfo(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void

    .line 144
    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    goto :goto_c
.end method

.method public static processAllUsers(Ljava/util/List;Landroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-nez v0, :cond_7

    .line 326
    :goto_6
    return-void

    .line 310
    :cond_7
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 311
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 312
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 317
    const-string v0, "com.android.launcher3.managedusers.prefs"

    .line 318
    const/4 v1, 0x0

    .line 316
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_49

    .line 325
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    .line 312
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 313
    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->addAllUserKeys(JLjava/util/HashSet;)V

    goto :goto_14

    .line 320
    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 322
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_31
.end method

.method private saveWorkFolderShortcuts(JI)V
    .registers 15

    .prologue
    const/4 v6, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 217
    return-void

    .line 213
    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 214
    add-int/lit8 v8, p3, 0x1

    iput p3, v1, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    move-wide v2, p1

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    move p3, v8

    goto :goto_7
.end method


# virtual methods
.method public processPackageAdd([Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 237
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 238
    invoke-direct {p0, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v5

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v8

    .line 244
    array-length v9, p1

    move v2, v3

    move v0, v3

    :goto_25
    if-lt v2, v9, :cond_48

    .line 263
    if-eqz v0, :cond_3b

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 265
    invoke-direct {p0, v5}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    .line 267
    :cond_3b
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 244
    :cond_48
    aget-object v10, p1, v2

    .line 245
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 246
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v1, 0x1

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v8, v10, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v10

    if-eqz v10, :cond_79

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_64
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6f

    move v0, v1

    .line 244
    :cond_6b
    :goto_6b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_25

    .line 252
    :cond_6f
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 253
    invoke-direct {p0, v0, v6, v7}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;J)V

    goto :goto_64

    .line 256
    :cond_79
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_88

    .line 257
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-direct {p0, v0, v6, v7}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;J)V

    :cond_88
    move v0, v1

    goto :goto_6b
.end method

.method public processPackageRemoved([Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 274
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 275
    invoke-direct {p0, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    .line 278
    array-length v3, p1

    move v1, v0

    :goto_b
    if-lt v1, v3, :cond_1f

    .line 284
    if-eqz v0, :cond_1e

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    :cond_1e
    return-void

    .line 278
    :cond_1f
    aget-object v4, p1, v1

    .line 279
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 280
    const/4 v0, 0x1

    .line 278
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public processUserApps(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 111
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 112
    invoke-direct {p0, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v3

    .line 114
    const/4 v0, 0x0

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_38

    .line 132
    if-eqz v1, :cond_37

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    invoke-direct {p0, v3}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    .line 139
    :cond_37
    return-void

    .line 116
    :cond_38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 117
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 119
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v1, 0x1

    .line 124
    :cond_50
    :try_start_50
    iget-object v6, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 125
    const/16 v7, 0x2000

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 126
    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {p0, v0, v6, v7}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;J)V
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_61} :catch_62

    goto :goto_1d

    .line 127
    :catch_62
    move-exception v0

    .line 128
    const-string v6, "ManagedProfileHeuristic"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method
