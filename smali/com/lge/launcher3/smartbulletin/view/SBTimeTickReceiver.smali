.class public Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBTimeTickReceiver.java"


# instance fields
.field private mTimeTickManager:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;Landroid/widget/ImageView;)V
    .registers 6

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->mTimeTickManager:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;

    .line 17
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;

    .line 18
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;Landroid/widget/ImageView;)V

    .line 17
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->mTimeTickManager:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 39
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->mTimeTickManager:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;

    if-eqz v0, :cond_1c

    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->mTimeTickManager:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->updateHeaderMessage()V

    .line 46
    :cond_1c
    return-void
.end method

.method public registerTimeTickReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->updateHeaderContent()V

    .line 26
    return-void
.end method

.method public unregisterTimeTickReceiver(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 30
    return-void
.end method

.method public updateHeaderContent()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->mTimeTickManager:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->updateHeaderMessage()V

    .line 34
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickReceiver;->mTimeTickManager:Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBTimeTickManager;->updateHeaderBackground()V

    .line 35
    return-void
.end method
