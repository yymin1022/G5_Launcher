.class Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$5;
.super Ljava/lang/Object;
.source "SBSettingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->createSBRemoveDialog(Landroid/widget/CompoundButton;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

.field private final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/widget/CompoundButton;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$5;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    iput-object p2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$5;->val$buttonView:Landroid/widget/CompoundButton;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$5;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$4(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)V

    .line 322
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$5;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 323
    return-void
.end method
