.class Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;
.super Ljava/lang/Object;
.source "HomescreenSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeGoogleNowSwitchPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    iput-object p2, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;->val$context:Landroid/content/Context;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->setGoogleNowEnabled(Landroid/content/Context;Z)Z

    .line 562
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateGoogleNowEnabled(Landroid/content/Context;Z)V

    .line 563
    new-instance v0, Landroid/content/Intent;

    .line 564
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_KILL_PROCESS:Lcom/lge/launcher3/config/IntentConst$Action;

    iget-object v2, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 566
    const/4 v0, 0x1

    return v0
.end method
