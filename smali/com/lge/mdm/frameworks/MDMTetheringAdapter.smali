.class public Lcom/lge/mdm/frameworks/MDMTetheringAdapter;
.super Ljava/lang/Object;
.source "MDMTetheringAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MDMTetheringAdapter"

.field private static final singleton:Lcom/lge/mdm/frameworks/MDMTetheringAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    invoke-direct {v0}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;-><init>()V

    sput-object v0, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->singleton:Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/frameworks/MDMTetheringAdapter;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->singleton:Lcom/lge/mdm/frameworks/MDMTetheringAdapter;

    return-object v0
.end method


# virtual methods
.method public getDisallowTetheringType(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 35
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/mdm/frameworks/MDMTetheringAdapter;->getDisallowTetheringType(II)Z

    move-result v0

    return v0
.end method

.method public getDisallowTetheringType(II)Z
    .registers 16
    .param p1, "type"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 39
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v5

    .line 41
    .local v5, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    const/4 v6, 0x0

    .line 42
    .local v6, "ret":Z
    const/4 v10, 0x0

    invoke-virtual {v5, v10, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowTethering(Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_3d

    const/4 v7, 0x0

    .line 44
    .local v7, "tetherDisAllow":Z
    :goto_d
    if-eqz v7, :cond_3f

    .line 46
    const/4 v6, 0x1

    .line 91
    :cond_10
    :goto_10
    const-string/jumbo v10, "MDMTetheringAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getDisallowTetheringType("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " (true:Disallow)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return v6

    .line 42
    .end local v7    # "tetherDisAllow":Z
    :cond_3d
    const/4 v7, 0x1

    .restart local v7    # "tetherDisAllow":Z
    goto :goto_d

    .line 50
    :cond_3f
    const/4 v10, 0x0

    invoke-virtual {v5, v10, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowHotspot(Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_81

    const/4 v4, 0x0

    .line 51
    .local v4, "hotspotDisAllow":Z
    :goto_47
    const/4 v10, 0x0

    invoke-virtual {v5, v10, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsb(Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_83

    const/4 v8, 0x0

    .line 52
    .local v8, "usbDisAllow":Z
    :goto_4f
    const/4 v10, 0x0

    invoke-virtual {v5, v10, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBTethering(Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_85

    const/4 v9, 0x0

    .line 54
    .local v9, "usbTetherDisAllow":Z
    :goto_57
    const/4 v10, 0x0

    invoke-virtual {v5, v10, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothTethering(Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_87

    const/4 v3, 0x0

    .line 55
    .local v3, "btTetherDisAllow":Z
    :goto_5f
    const/4 v10, 0x0

    invoke-virtual {v5, v10, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;I)I

    move-result v10

    .line 56
    const/4 v11, 0x2

    .line 55
    if-ne v10, v11, :cond_89

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "btDisAllow":Z
    :goto_68
    const/4 v10, 0x0

    invoke-virtual {v5, v10, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetoothProfiles(Landroid/content/ComponentName;I)I

    move-result v2

    .line 60
    .local v2, "btProfilePolicy":I
    and-int/lit8 v10, v2, 0x4

    .line 61
    const/4 v11, 0x4

    .line 60
    if-ne v10, v11, :cond_8b

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "btProfileDisAllow":Z
    :goto_73
    packed-switch p1, :pswitch_data_b2

    .line 87
    const-string/jumbo v10, "MDMTetheringAdapter"

    const-string/jumbo v11, "no Tether type number and return allow"

    invoke-static {v10, v11}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v6, 0x0

    goto :goto_10

    .line 50
    .end local v0    # "btDisAllow":Z
    .end local v1    # "btProfileDisAllow":Z
    .end local v2    # "btProfilePolicy":I
    .end local v3    # "btTetherDisAllow":Z
    .end local v4    # "hotspotDisAllow":Z
    .end local v8    # "usbDisAllow":Z
    .end local v9    # "usbTetherDisAllow":Z
    :cond_81
    const/4 v4, 0x1

    .restart local v4    # "hotspotDisAllow":Z
    goto :goto_47

    .line 51
    :cond_83
    const/4 v8, 0x1

    .restart local v8    # "usbDisAllow":Z
    goto :goto_4f

    .line 52
    :cond_85
    const/4 v9, 0x1

    .restart local v9    # "usbTetherDisAllow":Z
    goto :goto_57

    .line 54
    :cond_87
    const/4 v3, 0x1

    .restart local v3    # "btTetherDisAllow":Z
    goto :goto_5f

    .line 56
    :cond_89
    const/4 v0, 0x1

    .restart local v0    # "btDisAllow":Z
    goto :goto_68

    .line 61
    .restart local v2    # "btProfilePolicy":I
    :cond_8b
    const/4 v1, 0x1

    .restart local v1    # "btProfileDisAllow":Z
    goto :goto_73

    .line 65
    :pswitch_8d
    if-nez v9, :cond_91

    if-eqz v8, :cond_10

    .line 66
    :cond_91
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 70
    :pswitch_94
    if-eqz v4, :cond_10

    .line 71
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 75
    :pswitch_99
    if-nez v3, :cond_9f

    if-nez v0, :cond_9f

    if-eqz v1, :cond_10

    .line 76
    :cond_9f
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 80
    :pswitch_a2
    if-nez v8, :cond_a6

    if-eqz v9, :cond_10

    .line 81
    :cond_a6
    if-nez v3, :cond_ac

    if-nez v0, :cond_ac

    .line 80
    if-eqz v1, :cond_10

    :cond_ac
    if-eqz v4, :cond_10

    .line 83
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 63
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_94
        :pswitch_99
        :pswitch_a2
    .end packed-switch
.end method
