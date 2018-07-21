.class public Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;
.super Landroid/app/ListFragment;
.source "HiddenMenuExplorerListFragment.java"


# instance fields
.field private item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileContent:Landroid/widget/TextView;

.field private myPath:Landroid/widget/TextView;

.field private path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljava/lang/String;

.field private scanner:Ljava/util/Scanner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->item:Ljava/util/List;

    .line 29
    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->path:Ljava/util/List;

    .line 30
    const-string v0, "./data/data/com.lge.launcher3/"

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->root:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private getDir(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->myPath:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->item:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->path:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->root:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 57
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->item:Ljava/util/List;

    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->root:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->path:Ljava/util/List;

    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->root:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->item:Ljava/util/List;

    const-string v3, "../"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->path:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_51
    const/4 v0, 0x0

    :goto_52
    array-length v2, v1

    if-lt v0, v2, :cond_67

    .line 73
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->item:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void

    .line 65
    :cond_67
    aget-object v2, v1, v0

    .line 66
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->path:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 68
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->item:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 70
    :cond_97
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->item:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 37
    const v0, 0x7f040012

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    const v0, 0x7f0e003c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->myPath:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0e003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->mFileContent:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->root:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->root:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->getDir(Ljava/lang/String;)V

    .line 42
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10

    .prologue
    .line 82
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->path:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 86
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->path:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->getDir(Ljava/lang/String;)V

    .line 121
    :goto_24
    return-void

    .line 88
    :cond_25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02004c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] folder can\'t be read!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    const-string v1, "OK"

    new-instance v2, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment$1;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment$1;-><init>(Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_24

    .line 99
    :cond_61
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "launcher.db"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 100
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_24

    .line 102
    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    :try_start_83
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 105
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->scanner:Ljava/util/Scanner;

    .line 106
    :goto_8f
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 109
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_9c} :catch_c2

    .line 115
    :goto_9c
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->mFileContent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->mFileContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 107
    :cond_b2
    :try_start_b2
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_b2 .. :try_end_c1} :catch_c2

    goto :goto_8f

    .line 111
    :catch_c2
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_9c
.end method
