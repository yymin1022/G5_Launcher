.class Lcom/lge/launcher3/help/HelpFragment$2;
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
    iput-object p1, p0, Lcom/lge/launcher3/help/HelpFragment$2;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment$2;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v0}, Lcom/lge/launcher3/help/HelpFragment;->access$5(Lcom/lge/launcher3/help/HelpFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpFragment$2;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v1, v0}, Lcom/lge/launcher3/help/HelpFragment;->access$6(Lcom/lge/launcher3/help/HelpFragment;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 175
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpFragment$2;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v1}, Lcom/lge/launcher3/help/HelpFragment;->access$5(Lcom/lge/launcher3/help/HelpFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 177
    :cond_1e
    return-void
.end method
