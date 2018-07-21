.class Lcom/lge/launcher3/uninstallmode/UninstallModeManager$3;
.super Ljava/lang/Object;
.source "UninstallModeManager.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setupAllUninstallableItemsList(Lcom/android/launcher3/Workspace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$3;->this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 363
    if-eqz p2, :cond_7

    instance-of v0, p2, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;

    if-nez v0, :cond_8

    .line 373
    :cond_7
    :goto_7
    return v1

    .line 367
    :cond_8
    check-cast p2, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;

    .line 368
    invoke-interface {p2}, Lcom/lge/launcher3/badge/uninstall/IUninstallBadgeView;->isUninstallable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 372
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$3;->this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    iget-object v0, v0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->mUninstallableItemList:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method
