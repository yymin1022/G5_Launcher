.class Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;
.super Ljava/lang/Object;
.source "HomescreenSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectDynamicGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$currentGridIndex:I

.field private final synthetic val$dynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;ILcom/lge/launcher3/dynamicgrid/DynamicGridManager;Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    iput p2, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->val$currentGridIndex:I

    iput-object p3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->val$dynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    iput-object p4, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->val$activity:Landroid/app/Activity;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 729
    iget v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->val$currentGridIndex:I

    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-static {v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->access$2(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)I

    move-result v1

    if-eq v0, v1, :cond_26

    .line 730
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->val$dynamicGridManager:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-static {v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->access$2(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->runDynamicGrid(I)V

    .line 731
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->refreshPrefInfo()V

    .line 732
    new-instance v0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->show(I)V

    .line 734
    :cond_26
    return-void
.end method
