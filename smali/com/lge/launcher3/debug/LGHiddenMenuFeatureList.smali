.class public Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;
.super Landroid/app/ListFragment;
.source "LGHiddenMenuFeatureList.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# static fields
.field static sIschangeRestart:Z


# instance fields
.field private final fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

.field private lv:Landroid/widget/ListView;

.field private final mSearchResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->sIschangeRestart:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 35
    new-instance v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-direct {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->mSearchResultList:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->mSearchResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    return-object v0
.end method

.method private loadFeatureList()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 76
    const-class v1, Lcom/lge/launcher3/config/LGFeatureConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    const-class v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 78
    sget-object v4, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->sFeatureClassList:[Ljava/lang/Class;

    array-length v5, v4

    move v1, v0

    :goto_11
    if-lt v0, v5, :cond_14

    .line 95
    return-void

    .line 78
    :cond_14
    aget-object v6, v4, v0

    .line 80
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 83
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 84
    invoke-direct {p0, v1, v6}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->setBooleanData(I[Ljava/lang/reflect/Field;)V

    .line 93
    :goto_27
    add-int/lit8 v1, v1, 0x1

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 85
    :cond_2c
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 86
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 87
    invoke-direct {p0, v1, v6}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->setConfigClassData(I[Ljava/lang/reflect/Field;)V

    goto :goto_27

    .line 89
    :cond_3a
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 90
    invoke-direct {p0, v1, v6}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->setBooleanData(I[Ljava/lang/reflect/Field;)V

    goto :goto_27
.end method

.method private setBooleanData(I[Ljava/lang/reflect/Field;)V
    .registers 7

    .prologue
    .line 98
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-lt v0, v1, :cond_5

    .line 108
    return-void

    .line 99
    :cond_5
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "boolean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 101
    new-instance v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    invoke-direct {v1}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;-><init>()V

    .line 102
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    .line 103
    iput p1, v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->classNumber:I

    .line 104
    aget-object v2, p2, v0

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->getItemValue(ILjava/lang/reflect/Field;Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    .line 105
    iget-object v2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->addtData(Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;)V

    .line 98
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setConfigClassData(I[Ljava/lang/reflect/Field;)V
    .registers 7

    .prologue
    .line 111
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-lt v0, v1, :cond_5

    .line 124
    return-void

    .line 112
    :cond_5
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 113
    sget-object v2, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->sFeatureClassList:[Ljava/lang/Class;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 115
    new-instance v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    invoke-direct {v1}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;-><init>()V

    .line 116
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    .line 117
    iput p1, v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->classNumber:I

    .line 118
    aget-object v2, p2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    iget-object v2, v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    invoke-static {v2}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->valueOf(Ljava/lang/String;)Lcom/lge/launcher3/util/LGHomeFeature$Config;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    .line 121
    iget-object v2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->addtData(Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;)V

    .line 111
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    invoke-direct {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->loadFeatureList()V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->setHasOptionsMenu(Z)V

    .line 44
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090005

    .line 45
    iget-object v3, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v3}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getNameList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->lv:Landroid/widget/ListView;

    .line 48
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->lv:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 49
    const/4 v0, 0x0

    :goto_35
    iget-object v1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v1}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->size()I

    move-result v1

    if-lt v0, v1, :cond_48

    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->lv:Landroid/widget/ListView;

    new-instance v1, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;-><init>(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    return-void

    .line 50
    :cond_48
    iget-object v1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getData(I)Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    .prologue
    .line 134
    const-string v0, "Search"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 135
    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 136
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 137
    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 139
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 140
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10

    .prologue
    .line 128
    const-string v0, "FragmentList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Item clicked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const v6, 0x1090005

    const/4 v1, 0x0

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->lv:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 147
    iget-object v4, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v4}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getNameList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move v0, v1

    .line 149
    :goto_24
    iget-object v1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v1}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->size()I

    move-result v1

    if-lt v0, v1, :cond_2e

    .line 168
    :cond_2c
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_2e
    iget-object v1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getData(I)Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 154
    :cond_3e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 155
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    .line 156
    :goto_4c
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->size()I

    move-result v0

    if-lt v2, v0, :cond_94

    .line 161
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->lv:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 162
    iget-object v4, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    iget-object v5, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getNameList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    :goto_6a
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 164
    iget-object v2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->lv:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getArray()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    iget-boolean v0, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 157
    :cond_94
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    iget-object v0, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_b2

    .line 158
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->mSearchResultList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_b2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4c
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .registers 6

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 183
    sget-boolean v0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->sIschangeRestart:Z

    if-eqz v0, :cond_34

    .line 184
    const/4 v1, 0x0

    .line 188
    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "hiddenmenu.data"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 190
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_35
    .catchall {:try_start_8 .. :try_end_1f} :catchall_42

    .line 191
    :try_start_1f
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 192
    iget-object v2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->fManger:Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 194
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_58
    .catchall {:try_start_1f .. :try_end_2f} :catchall_53

    .line 199
    if-eqz v0, :cond_34

    .line 200
    :try_start_31
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_4e

    .line 208
    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    move-object v0, v1

    .line 199
    :goto_37
    if-eqz v0, :cond_34

    .line 200
    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_34

    .line 202
    :catch_3d
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 197
    :catchall_42
    move-exception v0

    .line 199
    :goto_43
    if-eqz v1, :cond_48

    .line 200
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 206
    :cond_48
    :goto_48
    throw v0

    .line 202
    :catch_49
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 202
    :catch_4e
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 197
    :catchall_53
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_43

    :catch_58
    move-exception v1

    goto :goto_37
.end method
