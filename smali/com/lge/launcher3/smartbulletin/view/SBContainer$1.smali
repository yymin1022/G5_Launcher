.class Lcom/lge/launcher3/smartbulletin/view/SBContainer$1;
.super Ljava/lang/Object;
.source "SBContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/ActionManagerUserLog;->sendBoardPauseAll(Landroid/content/Context;)V

    .line 499
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendPaused(Landroid/content/Context;)V

    .line 500
    return-void
.end method
