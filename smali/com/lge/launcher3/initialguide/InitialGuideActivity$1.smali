.class Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;
.super Ljava/lang/Object;
.source "InitialGuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setupPager()V
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
    iput-object p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 196
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 190
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getPageCount()I

    move-result v0

    .line 176
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_f

    .line 184
    :goto_e
    return-void

    .line 180
    :cond_f
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$0(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$1(Lcom/lge/launcher3/initialguide/InitialGuideActivity;II)V

    .line 181
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v0, p1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$2(Lcom/lge/launcher3/initialguide/InitialGuideActivity;I)V

    .line 183
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-static {v0, p1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->access$3(Lcom/lge/launcher3/initialguide/InitialGuideActivity;I)V

    goto :goto_e
.end method
