.class Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "HomescreenSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$1;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    .line 904
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 907
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p2}, Lcom/lge/launcher3/homesettings/LGMDMUtils;->receiveLGMDMIntentAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 908
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$1;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 910
    :cond_16
    return-void
.end method
