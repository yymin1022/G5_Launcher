.class Lcom/lge/launcher3/help/HelpFragment$3;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/help/HelpFragment;->setupPageButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/help/HelpFragment;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/help/HelpFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/help/HelpFragment$3;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment$3;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v0}, Lcom/lge/launcher3/help/HelpFragment;->access$5(Lcom/lge/launcher3/help/HelpFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpFragment$3;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v1, v0}, Lcom/lge/launcher3/help/HelpFragment;->access$7(Lcom/lge/launcher3/help/HelpFragment;I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 188
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpFragment$3;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v1}, Lcom/lge/launcher3/help/HelpFragment;->access$5(Lcom/lge/launcher3/help/HelpFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 193
    :goto_1e
    return-void

    .line 190
    :cond_1f
    sget-object v0, Lcom/lge/launcher3/help/HelpFragment;->TAG:Ljava/lang/String;

    const-string v1, "The complete button was clicked and finish InitialGuide"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment$3;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v0}, Lcom/lge/launcher3/help/HelpFragment;->access$8(Lcom/lge/launcher3/help/HelpFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1e
.end method
