.class Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;
.super Ljava/lang/Object;
.source "SBSettingListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->initSwitch(Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;)Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p2, :cond_b

    .line 194
    :goto_a
    return-void

    .line 179
    :cond_b
    if-eqz p2, :cond_25

    .line 180
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$1(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2$1;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;ZLandroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 190
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$4(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)V

    .line 191
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v1, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$5(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/widget/CompoundButton;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$6(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/app/Dialog;)V

    .line 192
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$7(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_a
.end method
