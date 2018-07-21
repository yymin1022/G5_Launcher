.class public Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBRequestReceiver.java"


# instance fields
.field private mSBCollapsable:Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;->mSBCollapsable:Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;

    .line 16
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;->mSBCollapsable:Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;

    .line 17
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    const-string v1, "com.lge.launcher3.smartbulletin.request.collapse"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "com.lge.launcher3.smartbulletin.request.expand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 21
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;->mSBCollapsable:Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;

    if-nez v1, :cond_10

    .line 38
    :cond_f
    :goto_f
    return-void

    .line 27
    :cond_10
    const-string v1, "com.lge.launcher3.smartbulletin.request.collapse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 28
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;->mSBCollapsable:Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;

    invoke-interface {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;->collapseProvider()V

    goto :goto_f

    .line 29
    :cond_1e
    const-string v1, "com.lge.launcher3.smartbulletin.request.expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    if-nez v0, :cond_33

    .line 32
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;->mSBCollapsable:Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;->expandProvider(Z)V

    goto :goto_f

    .line 34
    :cond_33
    const-string v1, "smartbulletin_goto_provider_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBRequestReceiver;->mSBCollapsable:Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;

    invoke-interface {v1, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCollapsableView;->getAnimatorscrollToComponent(Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_f
.end method
