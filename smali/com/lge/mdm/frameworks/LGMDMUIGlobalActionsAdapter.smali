.class public Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;
.super Ljava/lang/Object;
.source "LGMDMUIGlobalActionsAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string/jumbo v0, "LGMDMUIGlobalActionsAdapter"

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    .line 35
    :cond_b
    sget-object v0, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->sInstance:Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;

    return-object v0
.end method


# virtual methods
.method public checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mCurrentModuleName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 42
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkDisabled() Component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mCurrentModuleName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 43
    const-string/jumbo v3, ", userHandle:"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 47
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez p2, :cond_37

    .line 48
    return v4

    .line 51
    :cond_37
    const-string/jumbo v1, "LGMDMAirplaneModeUIAdpater"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 52
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 53
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 54
    :cond_4c
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "LGMDM: Restrict AIRPLANE MODE"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    return v1

    .line 58
    :cond_56
    return v4
.end method

.method public checkPowerOffDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "mCurrentModuleName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 86
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPowerOffDisabled() Component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mCurrentModuleName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    const-string/jumbo v3, ", userHandle:"

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 91
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-nez p2, :cond_37

    .line 92
    return v4

    .line 95
    :cond_37
    const-string/jumbo v1, "LGMDMPowerOffUIAdpater"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 96
    invoke-virtual {v0, p1, p3}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowPowerOff(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_50

    .line 97
    sget-object v1, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "LGMDM: Restrict power off"

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_50
    return v4
.end method

.method public setAirplaneModeDisplayMenu(Landroid/view/View;I)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 62
    const-string/jumbo v3, "LGMDMAirplaneModeUIAdpater"

    invoke-virtual {p0, v5, v3, p2}, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 63
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setAirplaneModeDisplayMenu : Restrict AIRPLANE MODE"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v1

    .line 65
    .local v1, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz p1, :cond_40

    .line 66
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz v0, :cond_27

    .line 68
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 70
    :cond_27
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, "messageView":Landroid/widget/TextView;
    if-eqz v2, :cond_3d

    .line 72
    invoke-virtual {v1, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_41

    .line 73
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_block_airplane_NORMAL:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :cond_3d
    :goto_3d
    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .end local v2    # "messageView":Landroid/widget/TextView;
    :cond_40
    :goto_40
    return-void

    .line 74
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .restart local v2    # "messageView":Landroid/widget/TextView;
    :cond_41
    invoke-virtual {v1, v5, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEnforceAirplaneMode(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 75
    sget v3, Lcom/lge/internal/R$string;->sp_lgmdm_enforce_airplane_NORMAL:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3d

    .line 81
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .end local v2    # "messageView":Landroid/widget/TextView;
    :cond_4d
    sget-object v3, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setAirplaneModeDisplayMenu : allow mode : do nothing"

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public setPowerOffDisplayMenu(Landroid/view/View;I)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    if-nez p1, :cond_5

    .line 107
    return-void

    .line 110
    :cond_5
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, "icon":Landroid/widget/ImageView;
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, "messageView":Landroid/widget/TextView;
    const-string/jumbo v2, "LGMDMPowerOffUIAdpater"

    invoke-virtual {p0, v3, v2, p2}, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->checkPowerOffDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 114
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPowerOffMenu : Restrict power off"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz v0, :cond_2d

    .line 117
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 120
    :cond_2d
    if-eqz v1, :cond_34

    .line 121
    sget v2, Lcom/lge/internal/R$string;->sp_lgmdm_desc_poweroff_NORMAL:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :cond_34
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    :goto_37
    return-void

    .line 126
    :cond_38
    sget-object v2, Lcom/lge/mdm/frameworks/LGMDMUIGlobalActionsAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPowerOffDisplayMenu : allow power off : do nothing"

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method
