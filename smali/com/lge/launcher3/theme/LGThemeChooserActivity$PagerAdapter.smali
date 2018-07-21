.class Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "LGThemeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/theme/GridFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/theme/GridFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    .line 136
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 137
    iput-object p3, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->fragments:Ljava/util/List;

    .line 138
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragmentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/theme/GridFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getItem(I)Lcom/lge/launcher3/theme/GridFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/lge/launcher3/theme/GridFragment;
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/GridFragment;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 160
    const/4 v0, -0x2

    return v0
.end method

.method public setFragmentList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/theme/GridFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->fragments:Ljava/util/List;

    .line 152
    return-void
.end method
