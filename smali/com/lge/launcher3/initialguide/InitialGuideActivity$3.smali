.class Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;
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
    iput-object p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$4(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v1, v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$7(Lcom/lge/launcher3/initialguide/InitialGuideActivity;I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 261
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$4(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v2}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$6(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit8 v0, v0, -0x1

    :goto_22
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 266
    :goto_26
    return-void

    .line 261
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 263
    :cond_2a
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->TAG:Ljava/lang/String;

    const-string v1, "The complete button was clicked and finish InitialGuide"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->finish()V

    goto :goto_26
.end method
