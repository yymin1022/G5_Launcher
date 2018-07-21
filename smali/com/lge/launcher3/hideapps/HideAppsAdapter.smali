.class public Lcom/lge/launcher3/hideapps/HideAppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "HideAppsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lge/launcher3/hideapps/HideAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_CHECKED_APPS:Ljava/lang/String; = "checked_apps"


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/hideapps/HideAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenApps:Lcom/lge/launcher3/hideapps/HiddenApps;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field private mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Lcom/lge/launcher3/hideapps/HideAppsAdapter$1;

    invoke-direct {v0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter$1;-><init>()V

    sput-object v0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->COMPARATOR:Ljava/util/Comparator;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    .line 65
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 67
    iput-object p2, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mRootView:Landroid/view/ViewGroup;

    .line 68
    invoke-static {p1}, Lcom/lge/launcher3/hideapps/HiddenApps;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/hideapps/HiddenApps;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mHiddenApps:Lcom/lge/launcher3/hideapps/HiddenApps;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 74
    invoke-direct {p0, p1}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->loadAllApps(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private findHideAppItem(Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;)Lcom/lge/launcher3/hideapps/HideAppItem;
    .registers 6

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 236
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 228
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 229
    iget-object v2, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 230
    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    iget-object v2, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->getUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_d
.end method

.method private isExcludedApp(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 113
    array-length v3, v2

    move v1, v0

    :goto_d
    if-lt v1, v3, :cond_10

    .line 118
    :goto_f
    return v0

    .line 113
    :cond_10
    aget-object v4, v2, v1

    .line 114
    invoke-virtual {p2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 115
    const/4 v0, 0x1

    goto :goto_f

    .line 113
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private loadAllApps(Landroid/content/Context;)V
    .registers 10

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_37

    .line 105
    sget-object v0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    sget-object v0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    return-void

    .line 86
    :cond_37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->isExcludedApp(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 90
    new-instance v5, Lcom/lge/launcher3/hideapps/HideAppItem;

    invoke-direct {v5}, Lcom/lge/launcher3/hideapps/HideAppItem;-><init>()V

    .line 91
    iput-object v0, v5, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 92
    iput-object v3, v5, Lcom/lge/launcher3/hideapps/HideAppItem;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 93
    iget-object v6, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mHiddenApps:Lcom/lge/launcher3/hideapps/HiddenApps;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/lge/launcher3/hideapps/HiddenApps;->contains(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    .line 94
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/lge/launcher3/hideapps/HideAppItem;->intent:Landroid/content/Intent;

    .line 95
    iget-object v6, v5, Lcom/lge/launcher3/hideapps/HideAppItem;->intent:Landroid/content/Intent;

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v6, v5, Lcom/lge/launcher3/hideapps/HideAppItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 98
    iget-boolean v0, v5, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    if-eqz v0, :cond_79

    .line 99
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 101
    :cond_79
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method


# virtual methods
.method public getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 127
    :cond_10
    return-object v0
.end method

.method public getCheckedCount()I
    .registers 4

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 190
    return v1

    .line 185
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 186
    iget-boolean v0, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    if-eqz v0, :cond_8

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public getCheckedItems()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/hideapps/HideAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 180
    return-object v1

    .line 174
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 175
    iget-boolean v3, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    if-eqz v3, :cond_b

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    if-nez v0, :cond_6

    .line 169
    :cond_5
    :goto_5
    return-object v1

    .line 151
    :cond_6
    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 156
    iget-object v2, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-object v1, p2

    .line 157
    check-cast v1, Lcom/lge/launcher3/hideapps/CheckableAppIcon;

    .line 158
    if-nez p2, :cond_2d

    .line 159
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000d

    .line 160
    iget-object v4, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mRootView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    .line 159
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/hideapps/CheckableAppIcon;

    .line 163
    :cond_2d
    iget-object v3, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v4, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->intent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {v2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-boolean v0, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setChecked(Z)V

    .line 167
    invoke-virtual {v1, p0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method public notifyCheckStateChanged()V
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mListener:Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;

    if-eqz v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mListener:Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;

    invoke-interface {v0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;->onCheckStateChanged()V

    .line 261
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 199
    check-cast p1, Lcom/lge/launcher3/hideapps/CheckableAppIcon;

    .line 200
    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->toggle()V

    .line 202
    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 203
    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    .line 204
    iget-boolean v0, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getCheckableAppTalkbackString(Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->notifyCheckStateChanged()V

    .line 206
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->onClick(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 210
    const-string v0, "checked_apps"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 211
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 214
    if-eqz v1, :cond_1e

    .line 215
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 224
    :cond_1e
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->notifyCheckStateChanged()V

    .line 225
    return-void

    .line 211
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 212
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    goto :goto_c

    .line 215
    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    .line 216
    invoke-direct {p0, v0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->findHideAppItem(Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;)Lcom/lge/launcher3/hideapps/HideAppItem;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_18

    .line 221
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    goto :goto_18
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 249
    const-string v0, "checked_apps"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 251
    :cond_1c
    return-void

    .line 241
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 242
    iget-boolean v3, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->checked:Z

    if-eqz v3, :cond_b

    .line 243
    iget-object v3, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 244
    new-instance v4, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    iget-object v0, v0, Lcom/lge/launcher3/hideapps/HideAppItem;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-direct {v4, v3, v0}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public setOnCheckStateChangedListener(Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;)V
    .registers 2

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->mListener:Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;

    .line 255
    return-void
.end method
