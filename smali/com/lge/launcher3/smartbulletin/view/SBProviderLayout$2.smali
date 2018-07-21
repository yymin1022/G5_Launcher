.class Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$2;
.super Ljava/lang/Object;
.source "SBProviderLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$2;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_16

    const/16 v1, 0x42

    if-ne p2, v1, :cond_16

    .line 85
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$2;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-virtual {v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->removeOnceBadge()V

    .line 86
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$2;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-static {v1, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->access$0(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;Landroid/view/View;)V

    .line 94
    :goto_15
    return v0

    .line 88
    :cond_16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_37

    .line 89
    const/16 v0, 0x14

    if-eq p2, v0, :cond_24

    const/16 v0, 0x13

    if-ne p2, v0, :cond_37

    .line 90
    :cond_24
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v0, v1, :cond_37

    .line 91
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$2;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.lge.launcher3.smartbulletin.request.expand"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->access$1(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    :cond_37
    const/4 v0, 0x0

    goto :goto_15
.end method
