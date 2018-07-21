.class public Lcom/android/launcher3/Workspace$WorkspaceItds$3;
.super Ljava/lang/Object;
.source "WorkspaceItds.aj"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->ajc$interMethod$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$updateUninstallPolicy(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$packageList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$3;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$3;->val$packageList:Ljava/util/ArrayList;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .prologue
    .line 586
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2b

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2b

    .line 587
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 588
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$3;->val$packageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 590
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    .line 591
    iget-object v0, p0, Lcom/android/launcher3/Workspace$WorkspaceItds$3;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->setUninstallTypeForBadgeView(Landroid/view/View;)Z

    .line 595
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method
