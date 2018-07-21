.class Lcom/lge/launcher3/LauncherExtension$6;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/LauncherExtension;->setVisibilityUninstallButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/LauncherExtension;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$6;->this$0:Lcom/lge/launcher3/LauncherExtension;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$6;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1043
    const-string v0, "LauncherExtension"

    const-string v1, "onClickRecentUninstallButton"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    new-instance v0, Landroid/content/Intent;

    .line 1045
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_RECENTUNINSTALL:Lcom/lge/launcher3/config/IntentConst$Action;

    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension$6;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v2}, Lcom/lge/launcher3/LauncherExtension;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1047
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$6;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/LauncherExtension;->startActivity(Landroid/content/Intent;)V

    .line 1049
    :cond_2c
    return-void
.end method
