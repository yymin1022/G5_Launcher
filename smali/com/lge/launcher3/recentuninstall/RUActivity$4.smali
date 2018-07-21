.class Lcom/lge/launcher3/recentuninstall/RUActivity$4;
.super Ljava/lang/Object;
.source "RUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/recentuninstall/RUActivity;->initMultiSelectCmdBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/recentuninstall/RUActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$4;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$4;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    sget-object v1, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->NORMAL:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    iput-object v1, v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    .line 286
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$4;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->access$5(Lcom/lge/launcher3/recentuninstall/RUActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$4;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->startUninstallProgress()V

    .line 288
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$4;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initLayoutComponent()V

    .line 289
    return-void
.end method
