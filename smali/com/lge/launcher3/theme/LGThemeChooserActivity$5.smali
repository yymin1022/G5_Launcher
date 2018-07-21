.class Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;
.super Ljava/lang/Object;
.source "LGThemeChooserActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/theme/LGThemeChooserActivity;->initViewPager(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 300
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 294
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$11(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 281
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$11(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setActiveMarker(I)V

    .line 284
    :cond_11
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$12(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 285
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    const v2, 0x7f0f003d

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 286
    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v4}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$12(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 285
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$13(Lcom/lge/launcher3/theme/LGThemeChooserActivity;Ljava/lang/CharSequence;)V

    .line 288
    :cond_50
    return-void
.end method
