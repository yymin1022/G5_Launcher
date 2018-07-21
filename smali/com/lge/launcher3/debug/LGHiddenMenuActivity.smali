.class public Lcom/lge/launcher3/debug/LGHiddenMenuActivity;
.super Landroid/app/Activity;
.source "LGHiddenMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 14
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 18
    const/16 v0, 0x8

    invoke-virtual {v2, v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 19
    new-array v3, v4, [Ljava/lang/String;

    const-string v0, "Feature List"

    aput-object v0, v3, v1

    const-string v0, "Res check"

    aput-object v0, v3, v6

    const-string v0, "Explorer"

    aput-object v0, v3, v5

    const-string v0, "DBViewer"

    aput-object v0, v3, v7

    .line 20
    new-array v4, v4, [Ljava/lang/Class;

    const-class v0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    aput-object v0, v4, v1

    const-class v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;

    aput-object v0, v4, v6

    .line 21
    const-class v0, Lcom/lge/launcher3/debug/HiddenMenuExplorerListFragment;

    aput-object v0, v4, v5

    const-class v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    aput-object v0, v4, v7

    move v0, v1

    .line 22
    :goto_40
    array-length v5, v4

    if-lt v0, v5, :cond_4f

    .line 27
    if-eqz p1, :cond_4e

    .line 28
    const-string v0, "tab"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 30
    :cond_4e
    return-void

    .line 23
    :cond_4f
    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    .line 24
    new-instance v6, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;

    aget-object v7, v3, v0

    aget-object v8, v4, v0

    invoke-direct {v6, p0, v7, v8}, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    .line 23
    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_40
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 42
    sget-boolean v0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->sIschangeRestart:Z

    if-eqz v0, :cond_11

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->sIschangeRestart:Z

    .line 44
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 46
    :cond_11
    return-void
.end method
