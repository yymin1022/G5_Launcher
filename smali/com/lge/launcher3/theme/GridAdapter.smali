.class public Lcom/lge/launcher3/theme/GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;,
        Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private items:[Lcom/lge/launcher3/theme/GridItems;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPreveiwHeight:I

.field private mPreviewWidth:I

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/lge/launcher3/theme/GridItems;II)V
    .registers 6

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->mTasks:Ljava/util/ArrayList;

    .line 36
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    .line 39
    iput p3, p0, Lcom/lge/launcher3/theme/GridAdapter;->mPreviewWidth:I

    .line 40
    iput p4, p0, Lcom/lge/launcher3/theme/GridAdapter;->mPreveiwHeight:I

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/theme/GridAdapter;)I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/theme/GridAdapter;)I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->mPreveiwHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/theme/GridAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/theme/GridAdapter;Landroid/widget/ImageView;Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/theme/GridAdapter;->checkDeleteMode(Landroid/widget/ImageView;Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/widget/TextView;)V

    return-void
.end method

.method private checkDeleteMode(Landroid/widget/ImageView;Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/widget/TextView;)V
    .registers 7

    .prologue
    .line 114
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/GridAdapter;->isDeleteMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p2, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsSystem:Z

    if-nez v0, :cond_39

    iget-boolean v0, p2, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsInstalled:Z

    if-eqz v0, :cond_39

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0f008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    :cond_39
    return-void
.end method

.method private isDeleteMode(Landroid/app/Activity;)Z
    .registers 3

    .prologue
    .line 122
    instance-of v0, p1, Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    if-eqz v0, :cond_b

    .line 123
    check-cast p1, Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-virtual {p1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->isDeleteMode()Z

    move-result v0

    .line 125
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private runTask(Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;Lcom/lge/launcher3/theme/LGThemeInfo;)V
    .registers 5

    .prologue
    .line 137
    new-instance v0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;-><init>(Lcom/lge/launcher3/theme/GridAdapter;Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;Lcom/lge/launcher3/theme/LGThemeInfo;)V

    .line 138
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridAdapter;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method private setCatImage(Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;Lcom/lge/launcher3/theme/LGThemeInfo;)V
    .registers 3

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/theme/GridAdapter;->runTask(Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;Lcom/lge/launcher3/theme/LGThemeInfo;)V

    .line 111
    return-void
.end method


# virtual methods
.method public cancelAllTasks()V
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 133
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    return-void

    .line 130
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->cancel(Z)Z

    goto :goto_6
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    if-eqz v0, :cond_8

    .line 54
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    array-length v0, v0

    .line 56
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    aget-object v0, v0, p1

    .line 69
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    if-eqz v0, :cond_14

    if-ltz p1, :cond_14

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_14

    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/lge/launcher3/theme/GridItems;->id:I

    int-to-long v0, v0

    .line 77
    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public getItems()[Lcom/lge/launcher3/theme/GridItems;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x4

    .line 88
    if-eqz p2, :cond_23

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    .line 90
    iget-object v1, v0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/lge/launcher3/theme/GridItems;->mInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v2, v2, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    if-ne v1, v2, :cond_23

    .line 91
    iget-object v1, v0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->deleteView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/lge/launcher3/theme/GridItems;->mInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->textTitle:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, v0}, Lcom/lge/launcher3/theme/GridAdapter;->checkDeleteMode(Landroid/widget/ImageView;Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/widget/TextView;)V

    .line 106
    :goto_22
    return-object p2

    .line 95
    :cond_23
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;-><init>(Lcom/lge/launcher3/theme/GridAdapter;)V

    .line 97
    const v0, 0x7f0e002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f0e002e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->textTitle:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0e002d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->deleteView:Landroid/widget/ImageView;

    .line 100
    iget-object v0, v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->deleteView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    const v0, 0x7f0e002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->selectView:Landroid/widget/ImageView;

    .line 102
    iget-object v0, v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->selectView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/lge/launcher3/theme/GridItems;->mInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->mPackageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/lge/launcher3/theme/GridItems;->mInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-direct {p0, v1, v0}, Lcom/lge/launcher3/theme/GridAdapter;->setCatImage(Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;Lcom/lge/launcher3/theme/LGThemeInfo;)V

    goto :goto_22
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public setItems([Lcom/lge/launcher3/theme/GridItems;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    .line 49
    return-void
.end method

.method public setItemsList([Lcom/lge/launcher3/theme/GridItems;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridAdapter;->items:[Lcom/lge/launcher3/theme/GridItems;

    .line 82
    return-void
.end method
