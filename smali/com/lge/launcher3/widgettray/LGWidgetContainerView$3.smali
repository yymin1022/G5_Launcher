.class Lcom/lge/launcher3/widgettray/LGWidgetContainerView$3;
.super Ljava/lang/Object;
.source "LGWidgetContainerView.java"

# interfaces
.implements Lcom/lge/launcher3/pageindicator/PageIndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->onFinishInflate()V
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
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$3;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePage(I)V
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$3;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$2(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 95
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$3;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$3(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getPositionAsLayoutDirection(I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$3;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v1}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$2(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 98
    :cond_1b
    return-void
.end method
