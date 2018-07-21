.class Lcom/lge/launcher3/homesettings/SBSwitchPreference$1;
.super Ljava/lang/Object;
.source "SBSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/homesettings/SBSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/homesettings/SBSwitchPreference;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/homesettings/SBSwitchPreference;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/SBSwitchPreference$1;->this$0:Lcom/lge/launcher3/homesettings/SBSwitchPreference;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SBSwitchPreference$1;->this$0:Lcom/lge/launcher3/homesettings/SBSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/homesettings/SBSwitchPreference;->access$0(Lcom/lge/launcher3/homesettings/SBSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 66
    if-eqz p2, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 77
    :cond_12
    :goto_12
    return-void

    .line 66
    :cond_13
    const/4 v0, 0x1

    goto :goto_f

    .line 69
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/SBSwitchPreference$1;->this$0:Lcom/lge/launcher3/homesettings/SBSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/lge/launcher3/homesettings/SBSwitchPreference;->setChecked(Z)V

    .line 70
    if-eqz p1, :cond_12

    .line 71
    if-eqz p2, :cond_26

    .line 72
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOnSmartBulletin(Landroid/content/Context;)Z

    goto :goto_12

    .line 74
    :cond_26
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOffSmartBulletin(Landroid/content/Context;)Z

    goto :goto_12
.end method
