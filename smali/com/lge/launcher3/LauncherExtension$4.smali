.class Lcom/lge/launcher3/LauncherExtension$4;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/LauncherExtension;->setVisibilityThemeButton()V
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
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$4;->this$0:Lcom/lge/launcher3/LauncherExtension;

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 995
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$4;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_22

    .line 996
    const-string v0, "LauncherExtension"

    const-string v1, "onClickThemeButton"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :try_start_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.themesquare.action.VIEW_THEMES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1000
    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$4;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/LauncherExtension;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_22} :catch_23

    .line 1006
    :cond_22
    :goto_22
    return-void

    .line 1002
    :catch_23
    move-exception v0

    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$4;->this$0:Lcom/lge/launcher3/LauncherExtension;

    const v1, 0x7f0f001e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22
.end method
