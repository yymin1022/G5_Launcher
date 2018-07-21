.class Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$2;
.super Ljava/lang/Object;
.source "SBCategoryLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$2;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    .prologue
    .line 76
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-eq v0, v1, :cond_d

    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$2;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-static {v0, p9, p5}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->access$1(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;II)V

    .line 79
    :cond_d
    return-void
.end method
