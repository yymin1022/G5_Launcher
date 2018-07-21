.class Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$3;
.super Ljava/lang/Object;
.source "SBCategoryLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->processExpand()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

.field private final synthetic val$dummyLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;Landroid/widget/LinearLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$3;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    iput-object p2, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$3;->val$dummyLayout:Landroid/widget/LinearLayout;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 129
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$3;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-static {v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->access$2(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$3;->val$dummyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$3;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->enableChangingTransition(Z)V

    .line 132
    return-void
.end method
