.class public Lcom/android/launcher3/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .registers 5

    .prologue
    const/16 v1, 0x2a

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 59
    iput-object p2, p0, Lcom/android/launcher3/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 60
    return-void
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 228
    :goto_6
    if-lt v2, v3, :cond_a

    move v0, v1

    .line 234
    :goto_9
    return v0

    .line 229
    :cond_a
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 230
    iget-object v4, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 231
    const/4 v0, 0x1

    goto :goto_9

    .line 228
    :cond_22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 204
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 209
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 204
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 205
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/lang/String;)Lcom/android/launcher3/AppInfo;
    .registers 8

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 249
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 242
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 243
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 244
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v3}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_d
.end method

.method public static packageHasActivities(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 4

    .prologue
    .line 218
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public add(Lcom/android/launcher3/AppInfo;)V
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 77
    :cond_e
    :goto_e
    return-void

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 8

    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 106
    return-void

    .line 103
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 104
    new-instance v2, Lcom/android/launcher3/AppInfo;

    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v2, p1, v0, p3, v3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;)V

    goto :goto_c
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void
.end method

.method public get(I)Lcom/android/launcher3/AppInfo;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 8

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-gez v1, :cond_c

    .line 121
    return-void

    .line 114
    :cond_c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 115
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 116
    iget-object v4, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 117
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    :cond_32
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateIconsAndLabels(Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/compat/UserHandleCompat;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 146
    return-void

    .line 140
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 141
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 142
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/AppInfo;)V

    .line 143
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 9

    .prologue
    .line 152
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8b

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_17
    if-gez v1, :cond_24

    .line 172
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_58

    .line 196
    :cond_23
    return-void

    .line 159
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 160
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 161
    iget-object v4, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p3, v4}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 162
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 163
    invoke-static {v2, v3}, Lcom/android/launcher3/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 164
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    :cond_54
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_17

    .line 172
    :cond_58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 174
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-direct {p0, v2, p3, v3}, Lcom/android/launcher3/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Ljava/lang/String;)Lcom/android/launcher3/AppInfo;

    move-result-object v2

    .line 176
    if-nez v2, :cond_7f

    .line 177
    new-instance v2, Lcom/android/launcher3/AppInfo;

    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v2, p1, v0, p3, v3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;)V

    goto :goto_1d

    .line 179
    :cond_7f
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Z)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 185
    :cond_8b
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_94
    if-ltz v1, :cond_23

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 187
    iget-object v2, v0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 188
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {p3, v3}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 189
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 190
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v2, p3}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
    :cond_c5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_94
.end method

.method public updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
    .registers 9

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-gez v1, :cond_c

    .line 136
    return-void

    .line 129
    :cond_c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 130
    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 131
    iget-object v4, v0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v4, p2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 132
    iget v3, v0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    invoke-virtual {p3, v3}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 133
    iget-object v3, p0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_37
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9
.end method
