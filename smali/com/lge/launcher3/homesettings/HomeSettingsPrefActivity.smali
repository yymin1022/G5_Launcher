.class public Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;
.super Landroid/preference/PreferenceActivity;
.source "HomeSettingsPrefActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeSettingsPrefActivity"

.field private static sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_14

    .line 54
    :cond_3
    :goto_3
    return-void

    .line 46
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 47
    const v0, 0x7f0f00d5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 44
    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 23
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-object v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    if-eqz v0, :cond_11

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    .line 28
    :cond_11
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 30
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 31
    const v1, 0x1020002

    new-instance v2, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-direct {v2}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;-><init>()V

    const-string v3, "HomeSettingsPrefActivity"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 32
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 58
    const-string v0, "HomeSettingsPrefActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    if-nez v0, :cond_26

    .line 61
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 62
    const-string v1, "HomeSettingsPrefActivity"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 61
    check-cast v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    sput-object v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    .line 64
    :cond_26
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 69
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->hasSettingSearchFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 71
    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    :cond_f
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 81
    :pswitch_c
    invoke-static {p0}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->startSettingsSearchActivity(Landroid/app/Activity;)V

    .line 82
    const/4 v0, 0x1

    goto :goto_b

    .line 79
    nop

    :pswitch_data_12
    .packed-switch 0x7f0e0105
        :pswitch_c
    .end packed-switch
.end method

.method public refreshPrefInfo()V
    .registers 3

    .prologue
    .line 35
    sget-object v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    if-nez v0, :cond_12

    .line 36
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "HomeSettingsPrefActivity"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    sput-object v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    .line 39
    :cond_12
    sget-object v0, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;->sPreferenceFragment:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->refreshPrefInfo()V

    .line 40
    return-void
.end method
