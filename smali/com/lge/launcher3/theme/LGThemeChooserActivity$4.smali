.class Lcom/lge/launcher3/theme/LGThemeChooserActivity$4;
.super Ljava/lang/Object;
.source "LGThemeChooserActivity.java"

# interfaces
.implements Lcom/lge/launcher3/pageindicator/PageIndicatorListener;


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
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$4;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePage(I)V
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$4;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$8(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 273
    return-void
.end method
