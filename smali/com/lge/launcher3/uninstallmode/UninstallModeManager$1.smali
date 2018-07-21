.class Lcom/lge/launcher3/uninstallmode/UninstallModeManager$1;
.super Landroid/os/AsyncTask;
.source "UninstallModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setUninstallTypeForAllBadgeViews(Lcom/android/launcher3/Workspace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

.field private final synthetic val$allItemsList:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;Ljava/util/HashSet;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$1;->this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    iput-object p2, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$1;->val$allItemsList:Ljava/util/HashSet;

    .line 105
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .prologue
    .line 110
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setUninstallTypeForAllBadgeViews() : AsyncTask - Start"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$1;->val$allItemsList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 138
    sget-object v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setUninstallTypeForAllBadgeViews() : AsyncTask - End"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 113
    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;

    if-eqz v1, :cond_d

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_d

    instance-of v3, v1, Lcom/android/launcher3/ItemInfo;

    if-eqz v3, :cond_d

    .line 122
    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 123
    iget-object v3, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$1;->this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    invoke-static {v3, v1}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->access$0(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;Lcom/android/launcher3/ItemInfo;)Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_d

    .line 128
    check-cast v0, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;

    .line 129
    invoke-interface {v0, v1}, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;->setUninstallType(Lcom/lge/launcher3/badge/uninstall/UninstallBadgeUtils$UninstallType;)V

    goto :goto_d
.end method
