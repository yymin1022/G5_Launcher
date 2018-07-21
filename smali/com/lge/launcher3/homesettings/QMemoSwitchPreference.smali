.class public Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "QMemoSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    const-string v1, "switchWidget"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_38

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_38

    .line 35
    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_38

    .line 36
    check-cast v0, Landroid/widget/Switch;

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 39
    new-instance v1, Lcom/lge/launcher3/homesettings/QMemoSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/homesettings/QMemoSwitchPreference$1;-><init>(Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    :cond_38
    return-void
.end method
