.class public Lcom/android/launcher3/Workspace$WorkspaceItds$2;
.super Ljava/lang/Object;
.source "WorkspaceItds.aj"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicytoAll(Lcom/android/launcher3/Workspace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$2;->this$0:Lcom/android/launcher3/Workspace;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 572
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_17

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_17

    .line 573
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    .line 574
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$2;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setUninstallTypeForBadgeView(Landroid/view/View;)Z

    .line 577
    :cond_17
    const/4 v0, 0x0

    return v0
.end method
