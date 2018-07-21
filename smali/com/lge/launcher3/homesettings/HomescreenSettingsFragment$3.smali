.class Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$3;
.super Ljava/lang/Object;
.source "HomescreenSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeSBSwitchPreference()V
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
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$3;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 446
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$3;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSmartBulletinOnOff(Landroid/content/Context;Z)V

    .line 447
    const/4 v0, 0x1

    return v0
.end method
