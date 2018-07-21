.class Lcom/lge/launcher3/widgettray/LGWidgetContainerView$4;
.super Ljava/lang/Object;
.source "LGWidgetContainerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->initPageIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$4;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 166
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 171
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$4;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$3(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getPositionAsLayoutDirection(I)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$4;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v1}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$4(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 159
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$4;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v1}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$4(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setActiveMarker(I)V

    .line 161
    :cond_1b
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$4;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v1, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$5(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;I)V

    .line 162
    return-void
.end method
