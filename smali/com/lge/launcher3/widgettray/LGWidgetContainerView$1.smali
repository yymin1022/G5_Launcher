.class Lcom/lge/launcher3/widgettray/LGWidgetContainerView$1;
.super Ljava/lang/Object;
.source "LGWidgetContainerView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/widgettray/LGWidgetContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$1;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-static {}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onKey v:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x4

    if-ne p2, v1, :cond_44

    .line 118
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$1;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v1}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$1(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->isUninstallMode()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 119
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$1;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v1}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$1(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setUninstallMode(Z)V

    .line 120
    const/4 v0, 0x1

    .line 123
    :cond_44
    return v0
.end method
