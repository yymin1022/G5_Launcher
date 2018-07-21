.class Lcom/lge/launcher3/initialguide/InitialGuideActivity$2;
.super Ljava/lang/Object;
.source "InitialGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setupPageMoveButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$4(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v1, v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$5(Lcom/lge/launcher3/initialguide/InitialGuideActivity;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 248
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$4(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v2}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$6(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit8 v0, v0, 0x1

    :goto_22
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 250
    :cond_26
    return-void

    .line 248
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_22
.end method
