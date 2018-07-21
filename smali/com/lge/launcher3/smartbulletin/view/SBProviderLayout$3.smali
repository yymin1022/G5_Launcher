.class Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$3;
.super Ljava/lang/Object;
.source "SBProviderLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$3;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 102
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v0, v1, :cond_14

    .line 103
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$3;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.lge.launcher3.smartbulletin.request.expand"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->access$1(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :goto_13
    return-void

    .line 105
    :cond_14
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$3;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.lge.launcher3.smartbulletin.request.collapse"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->access$1(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13
.end method
