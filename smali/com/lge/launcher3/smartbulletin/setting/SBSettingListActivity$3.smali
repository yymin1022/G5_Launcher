.class Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;
.super Ljava/lang/Object;
.source "SBSettingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    iput-object p2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->val$buttonView:Landroid/widget/CompoundButton;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$4(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)V

    .line 303
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$0(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-virtual {v1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->updateData(Landroid/content/Context;)V

    .line 304
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v0, v2}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$2(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Z)V

    .line 305
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$3(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/content/Context;Z)V

    .line 306
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSmartBulletinOnOff(Landroid/content/Context;Z)V

    .line 307
    return-void
.end method
