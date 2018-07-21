.class Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;
.super Ljava/lang/Object;
.source "SBSettingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;

.field private final synthetic val$buttonView:Landroid/widget/CompoundButton;

.field private final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;ZLandroid/widget/CompoundButton;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;->this$1:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;

    iput-boolean p2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;->val$isChecked:Z

    iput-object p3, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;->val$buttonView:Landroid/widget/CompoundButton;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 184
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;->this$1:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->access$0(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;)Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;->val$isChecked:Z

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$2(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Z)V

    .line 185
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;->this$1:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->access$0(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;)Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$3(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/content/Context;Z)V

    .line 186
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;->this$1:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->access$0(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;)Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSmartBulletinOnOff(Landroid/content/Context;Z)V

    .line 187
    return-void
.end method
