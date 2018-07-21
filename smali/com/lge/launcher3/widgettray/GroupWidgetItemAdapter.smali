.class public Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupWidgetItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final VIEW_HOLDER:I = 0x7f0e000a


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetCellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/widget/WidgetCell;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnLongClickListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mList:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 45
    iput-object p3, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetCellList:Ljava/util/List;

    .line 47
    return-void
.end method

.method private getWidgetPreviewLoader()Lcom/android/launcher3/WidgetPreviewLoader;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    if-nez v0, :cond_e

    .line 131
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 133
    :cond_e
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    return-object v0
.end method

.method private makeWidgetPreview(Ljava/lang/Object;Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 104
    new-instance v0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;

    invoke-direct {v0, p0, p4}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;-><init>(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 126
    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    return-void
.end method


# virtual methods
.method public compareWidgetCell(Landroid/view/View;)Z
    .registers 4

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetCellList:Ljava/util/List;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetCellList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 139
    const/4 v0, 0x1

    .line 141
    :cond_e
    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .prologue
    const v6, 0x7f0e000a

    const/4 v3, 0x0

    .line 63
    check-cast p2, Lcom/android/launcher3/widget/WidgetCell;

    .line 64
    invoke-direct {p0}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->getWidgetPreviewLoader()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    if-nez v0, :cond_e

    move-object v0, v3

    .line 100
    :goto_d
    return-object v0

    .line 67
    :cond_e
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mContext:Landroid/content/Context;

    .line 68
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 72
    if-nez p2, :cond_8b

    .line 73
    const v1, 0x7f04004c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 74
    new-instance v4, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;-><init>(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;)V

    move-object v1, v0

    .line 75
    check-cast v1, Lcom/lge/launcher3/widgettray/LGWidgetCell;

    .line 76
    const v5, 0x7f0e00f1

    invoke-virtual {v1, v5}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/widgettray/WidgetsImageView;

    .line 75
    invoke-static {v4, v1}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$0(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;Lcom/lge/launcher3/widgettray/WidgetsImageView;)V

    move-object v1, v0

    .line 77
    check-cast v1, Lcom/lge/launcher3/widgettray/LGWidgetCell;

    invoke-static {v4, v1}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$1(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;Lcom/lge/launcher3/widgettray/LGWidgetCell;)V

    .line 78
    invoke-virtual {v0, v6, v4}, Lcom/android/launcher3/widget/WidgetCell;->setTag(ILjava/lang/Object;)V

    move-object p2, v0

    .line 82
    :goto_47
    if-eqz v2, :cond_64

    .line 83
    instance-of v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_93

    .line 84
    new-instance v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v1, v2

    .line 85
    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 84
    invoke-direct {v5, v0, v1, v3}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 86
    invoke-virtual {p2, v5}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 87
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->applyFromAppWidgetProviderInfo(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 95
    :cond_64
    :goto_64
    invoke-static {v4}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$2(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/LGWidgetCell;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    invoke-static {v4}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$2(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/LGWidgetCell;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v4, p3, v0}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->makeWidgetPreview(Ljava/lang/Object;Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 98
    invoke-static {v4}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$2(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/LGWidgetCell;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetCellList:Ljava/util/List;

    invoke-static {v4}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$2(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/LGWidgetCell;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 80
    :cond_8b
    invoke-virtual {p2, v6}, Lcom/android/launcher3/widget/WidgetCell;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;

    move-object v4, v0

    goto :goto_47

    .line 88
    :cond_93
    instance-of v0, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_64

    .line 89
    new-instance v1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    move-object v0, v2

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 90
    invoke-virtual {p2, v1}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object v0, v2

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {p2, v1, v0, v3}, Lcom/android/launcher3/widget/WidgetCell;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V

    goto :goto_64
.end method
