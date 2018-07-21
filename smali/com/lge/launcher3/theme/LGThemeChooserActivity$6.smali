.class Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;
.super Ljava/lang/Object;
.source "LGThemeChooserActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/theme/LGThemeChooserActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$8(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v2}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$8(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$9(Lcom/lge/launcher3/theme/LGThemeChooserActivity;II)V

    .line 526
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$3(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v2}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$4(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$5(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$6(Lcom/lge/launcher3/theme/LGThemeChooserActivity;III)V

    .line 528
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$8(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 529
    return-void
.end method
