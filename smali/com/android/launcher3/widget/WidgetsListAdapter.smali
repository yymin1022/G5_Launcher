.class public Lcom/android/launcher3/widget/WidgetsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WidgetsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/launcher3/widget/WidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PRESET_INDENT_SIZE_TABLET:I = 0x38

.field private static final TAG:Ljava/lang/String; = "WidgetsListAdapter"


# instance fields
.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mIndent:I

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

.field private mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/Launcher;)V
    .registers 6

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 78
    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 79
    iput-object p4, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 81
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->setContainerHeight()V

    .line 82
    return-void
.end method

.method private getWidgetPreviewLoader()Lcom/android/launcher3/WidgetPreviewLoader;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    if-nez v0, :cond_e

    .line 203
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 205
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    return-object v0
.end method

.method private setContainerHeight()V
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 211
    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    if-nez v2, :cond_14

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_20

    .line 212
    :cond_14
    const/high16 v1, 0x42600000    # 56.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    .line 214
    :cond_20
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->getPackageSize()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 198
    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onBindViewHolder(Lcom/android/launcher3/widget/WidgetsRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/widget/WidgetsRowViewHolder;I)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/WidgetsModel;->getSortedWidgets(I)Ljava/util/List;

    move-result-object v5

    .line 97
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int v3, v1, v2

    .line 108
    if-lez v3, :cond_6b

    move v2, v4

    .line 109
    :goto_21
    if-lt v2, v3, :cond_40

    .line 130
    :cond_23
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/model/WidgetsModel;->getPackageItemInfo(I)Lcom/android/launcher3/model/PackageItemInfo;

    move-result-object v2

    .line 131
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object v1

    const v3, 0x7f0e00fb

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 132
    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V

    .line 135
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->getWidgetPreviewLoader()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v1

    if-nez v1, :cond_83

    .line 154
    :cond_3f
    return-void

    .line 110
    :cond_40
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 111
    const v6, 0x7f04004a

    .line 110
    invoke-virtual {v1, v6, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetCell;

    .line 114
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 117
    iget v7, v1, Lcom/android/launcher3/widget/WidgetCell;->cellSize:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    iget v7, v1, Lcom/android/launcher3/widget/WidgetCell;->cellSize:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    invoke-virtual {v1, v6}, Lcom/android/launcher3/widget/WidgetCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_21

    .line 123
    :cond_6b
    if-gez v3, :cond_23

    .line 124
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    :goto_71
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_83
    move v3, v4

    .line 138
    :goto_84
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3f

    .line 139
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetCell;

    .line 140
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_b8

    .line 141
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 142
    new-instance v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v2, v8}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 143
    invoke-virtual {v1, v6}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {v1, v2, v6}, Lcom/android/launcher3/widget/WidgetCell;->applyFromAppWidgetProviderInfo(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 151
    :cond_ae
    :goto_ae
    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreview()V

    .line 152
    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/WidgetCell;->setVisibility(I)V

    .line 138
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_84

    .line 145
    :cond_b8
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_ae

    .line 146
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 147
    new-instance v6, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v6, v7}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 148
    invoke-virtual {v1, v6}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {v1, v6, v2, v7}, Lcom/android/launcher3/widget/WidgetCell;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V

    goto :goto_ae
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/widget/WidgetsRowViewHolder;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 164
    const v1, 0x7f04004e

    .line 163
    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 165
    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 169
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_27

    .line 170
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    invoke-virtual {v1, v2, v4, v5, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 175
    :goto_21
    new-instance v1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v1

    .line 172
    :cond_27
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    invoke-virtual {v1, v2, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_21
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onFailedToRecycleView(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)Z
    .registers 3

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onViewRecycled(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)V
    .registers 5

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 182
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v2, v1, :cond_16

    .line 186
    return-void

    .line 183
    :cond_16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetCell;

    .line 184
    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    .line 182
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f
.end method

.method public setWidgetsModel(Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    .line 86
    return-void
.end method
