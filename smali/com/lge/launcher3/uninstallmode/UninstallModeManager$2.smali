.class Lcom/lge/launcher3/uninstallmode/UninstallModeManager$2;
.super Ljava/lang/Object;
.source "UninstallModeManager.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getAllItemsList(Lcom/android/launcher3/Workspace;)Ljava/util/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

.field private final synthetic val$itemList:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/uninstallmode/UninstallModeManager;Ljava/util/HashSet;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$2;->this$0:Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    iput-object p2, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$2;->val$itemList:Ljava/util/HashSet;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/launcher3/uninstallmode/UninstallModeManager$2;->val$itemList:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    const/4 v0, 0x0

    return v0
.end method
