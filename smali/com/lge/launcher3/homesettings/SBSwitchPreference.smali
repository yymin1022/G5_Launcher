.class public Lcom/lge/launcher3/homesettings/SBSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SBSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/homesettings/SBSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/homesettings/SBSwitchPreference;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/homesettings/SBSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/SBSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 37
    const-string v0, "switchBullet"

    const-string v2, "id"

    const-string v3, "com.lge"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    if-eqz v0, :cond_21

    .line 40
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    :cond_21
    const-string v0, "switchDivider"

    const-string v2, "id"

    const-string v3, "com.lge"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 44
    if-eqz v0, :cond_36

    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :cond_36
    const-string v0, "switch_widget"

    const-string v2, "id"

    .line 49
    const-string v3, "android"

    .line 48
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50
    if-nez v0, :cond_4c

    .line 51
    const-string v0, "switchWidget"

    const-string v2, "id"

    .line 52
    const-string v3, "android"

    .line 51
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 55
    :cond_4c
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_7d

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_7d

    .line 57
    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_7d

    .line 58
    check-cast v0, Landroid/widget/Switch;

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/SBSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 61
    new-instance v1, Lcom/lge/launcher3/homesettings/SBSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/homesettings/SBSwitchPreference$1;-><init>(Lcom/lge/launcher3/homesettings/SBSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_7d

    .line 82
    new-instance v1, Lcom/lge/launcher3/homesettings/SBSwitchPreference$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/homesettings/SBSwitchPreference$2;-><init>(Lcom/lge/launcher3/homesettings/SBSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_7d
    return-void
.end method

.method protected onClick()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method
