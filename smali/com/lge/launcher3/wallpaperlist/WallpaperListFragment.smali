.class public Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;
.super Landroid/app/Fragment;
.source "WallpaperListFragment.java"


# static fields
.field public static final REQUEST_WALLPAPER_SELECT:I

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->findWallpaperIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findWallpaperIndex(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 103
    array-length v1, v2

    .line 105
    add-int/lit8 v0, v1, -0x1

    :goto_12
    if-gez v0, :cond_16

    move v0, v1

    .line 110
    :cond_15
    return v0

    .line 106
    :cond_16
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_12
.end method

.method private setAdatper(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 66
    new-instance v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$1;-><init>(Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;)V

    .line 80
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    new-instance v2, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 83
    const v4, 0x7f040046

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 82
    invoke-direct {v2, v3, v4, v0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 84
    const v0, 0x7f0e00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v2, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$2;-><init>(Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_1e

    .line 126
    :cond_3
    :goto_3
    return-void

    .line 117
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f00d5

    .line 119
    const/4 v2, 0x0

    .line 118
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 115
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 33
    sget-object v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->setHasOptionsMenu(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1b

    .line 40
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_1b
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 47
    sget-object v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const v0, 0x7f040045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->setAdatper(Landroid/view/View;)V

    .line 50
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 130
    sget-object v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 132
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 145
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 138
    :pswitch_c
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 139
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 136
    nop

    :pswitch_data_1c
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 55
    sget-object v0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_10

    .line 58
    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->setAdatper(Landroid/view/View;)V

    .line 60
    :cond_10
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 61
    return-void
.end method
