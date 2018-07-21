.class Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "SBCategoryLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;
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
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 314
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 317
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "com.lge.launcher2.smartbulletin.configuration.color"

    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 318
    if-eqz v0, :cond_36

    .line 320
    const-string v0, "background_color"

    const/4 v1, -0x1

    .line 319
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 321
    const-string v1, "title_color"

    .line 322
    const/high16 v2, -0x1000000

    .line 321
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 324
    const-string v2, "component_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-static {v3, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->access$0(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;Ljava/lang/String;)Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    move-result-object v2

    .line 326
    if-eqz v2, :cond_36

    .line 327
    invoke-virtual {v2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setCustomProviderBgColor(I)V

    .line 328
    invoke-virtual {v2, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setCustomProviderTitleColor(I)V

    .line 331
    :cond_36
    return-void
.end method
