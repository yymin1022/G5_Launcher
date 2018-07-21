.class Lcom/lge/launcher3/help/HelpFragment$1;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/help/HelpFragment;->setupPager(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/lge/launcher3/help/HelpFragment$1;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 94
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 91
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment$1;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v0}, Lcom/lge/launcher3/help/HelpFragment;->access$0(Lcom/lge/launcher3/help/HelpFragment;)Lcom/lge/launcher3/help/HelpItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/help/HelpItemInfo;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_f

    .line 88
    :goto_e
    return-void

    .line 84
    :cond_f
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment$1;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    iget-object v1, p0, Lcom/lge/launcher3/help/HelpFragment$1;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v1}, Lcom/lge/launcher3/help/HelpFragment;->access$1(Lcom/lge/launcher3/help/HelpFragment;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/lge/launcher3/help/HelpFragment;->access$2(Lcom/lge/launcher3/help/HelpFragment;II)V

    .line 85
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment$1;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v0, p1}, Lcom/lge/launcher3/help/HelpFragment;->access$3(Lcom/lge/launcher3/help/HelpFragment;I)V

    .line 87
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment$1;->this$0:Lcom/lge/launcher3/help/HelpFragment;

    invoke-static {v0, p1}, Lcom/lge/launcher3/help/HelpFragment;->access$4(Lcom/lge/launcher3/help/HelpFragment;I)V

    goto :goto_e
.end method
