.class public Lcom/lge/launcher3/folderplus/FolderPlusAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderPlusAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;
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
.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFolderId:J

.field private mFolderInfo:Lcom/android/launcher3/FolderInfo;

.field private mFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;

.field private mRootView:Landroid/view/ViewGroup;

.field private mWillBeAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWillBeRemoved:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter$1;

    invoke-direct {v0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter$1;-><init>()V

    sput-object v0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->LABEL_COMPARATOR:Ljava/util/Comparator;

    .line 63
    new-instance v0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter$2;

    invoke-direct {v0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter$2;-><init>()V

    sput-object v0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->RANK_COMPARATOR:Ljava/util/Comparator;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;J)V
    .registers 6

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeRemoved:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    iput-object p2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mRootView:Landroid/view/ViewGroup;

    .line 82
    iput-wide p3, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderId:J

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 88
    invoke-direct {p0, p1}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->loadAllApps(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method private loadAllApps(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getItems()Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_37

    .line 110
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    sget-object v1, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->LABEL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 113
    return-void

    .line 97
    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 98
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v2, :cond_46

    .line 99
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5e

    .line 100
    :cond_46
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_56

    .line 101
    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 103
    :cond_56
    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 105
    :cond_5e
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->id:J

    iget-wide v4, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 106
    check-cast v0, Lcom/android/launcher3/FolderInfo;

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    goto :goto_1a
.end method

.method private verifyHighRes(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 247
    return-void

    .line 241
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 242
    iget-boolean v2, v0, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v2, :cond_4

    .line 243
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    .line 244
    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutInfo;->updateIcon(Lcom/android/launcher3/IconCache;)V

    goto :goto_4
.end method


# virtual methods
.method public apply()V
    .registers 5

    .prologue
    .line 233
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->verifyHighRes(Ljava/util/ArrayList;)V

    .line 235
    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->moveItemsToFolder(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V

    .line 236
    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->moveFolderItemsToWorkspace(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 237
    invoke-static {v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$interMethodDispatch1$com_lge_launcher3_nativejoin_LauncherModelAspect$com_android_launcher3_LauncherModel$removeWorkspaceEmptyScreenModel(Lcom/android/launcher3/LauncherModel;)V

    .line 238
    return-void
.end method

.method public getCheckedCount()I
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    if-nez v0, :cond_7

    .line 162
    :cond_6
    :goto_6
    return-object v1

    .line 135
    :cond_7
    if-ltz p1, :cond_6

    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 139
    check-cast p2, Lcom/lge/launcher3/hideapps/CheckableAppIcon;

    .line 140
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 142
    if-nez p2, :cond_72

    .line 143
    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04000d

    .line 144
    iget-object v4, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mRootView:Landroid/view/ViewGroup;

    .line 143
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/hideapps/CheckableAppIcon;

    .line 148
    :goto_2a
    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v2, :cond_69

    iget-boolean v2, v0, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v2, :cond_69

    .line 149
    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 153
    :goto_3e
    invoke-virtual {v1, v2}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setTag(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v1, p0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 159
    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_64
    move v0, v3

    .line 160
    :goto_65
    invoke-virtual {v1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setChecked(Z)V

    goto :goto_6

    .line 151
    :cond_69
    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutInfo;->getIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3e

    .line 158
    :cond_70
    const/4 v0, 0x1

    goto :goto_65

    :cond_72
    move-object v1, p2

    goto :goto_2a
.end method

.method public notifyCheckStateChanged()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mListener:Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mListener:Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;

    invoke-interface {v0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;->onCheckStateChanged()V

    .line 225
    :cond_9
    return-void
.end method

.method public onCheckStateChanged(Lcom/android/launcher3/ShortcutInfo;Z)V
    .registers 4

    .prologue
    .line 185
    if-eqz p2, :cond_26

    .line 186
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 187
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 188
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_17
    :goto_17
    return-void

    .line 190
    :cond_18
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 191
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    .line 194
    :cond_26
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 195
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 196
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 198
    :cond_3c
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 199
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mWillBeAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 175
    check-cast p1, Lcom/lge/launcher3/hideapps/CheckableAppIcon;

    .line 176
    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 178
    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->toggle()V

    .line 179
    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->onCheckStateChanged(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 180
    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getCheckableAppTalkbackString(Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->notifyCheckStateChanged()V

    .line 182
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
    .line 229
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->onClick(Landroid/view/View;)V

    .line 230
    return-void
.end method

.method public setCheckedAll(Z)V
    .registers 4

    .prologue
    .line 205
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1a

    .line 210
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    .line 214
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->notifyCheckStateChanged()V

    .line 215
    return-void

    .line 206
    :cond_1a
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;

    .line 207
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setChecked(Z)V

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 210
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 211
    invoke-virtual {p0, v0, p1}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->onCheckStateChanged(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto :goto_10
.end method

.method public setOnCheckStateChangedListener(Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->mListener:Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;

    .line 219
    return-void
.end method
