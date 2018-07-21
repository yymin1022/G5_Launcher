.class public Lcom/lge/mdm/frameworks/MDMInterfaceImplSprint;
.super Ljava/lang/Object;
.source "MDMInterfaceImplSprint.java"

# interfaces
.implements Lcom/lge/cappuccino/IMdmSprint;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowBluetooth(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 19
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 20
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v1

    return v1
.end method

.method public getAllowCamera(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 174
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 175
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_b

    .line 176
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowCameraWithWhitelist(Landroid/content/ComponentName;)Z

    move-result v1

    return v1

    .line 178
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 51
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 52
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public getAllowHotspot(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 30
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 31
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowHotspot(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public getAllowTethering(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 41
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 42
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public getAllowUSBHostStorage(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 144
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 145
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_b

    .line 146
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBHostStorage(Landroid/content/ComponentName;)Z

    move-result v1

    return v1

    .line 148
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUSBTethering(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 71
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 72
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUSBTethering(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public getAllowUsb(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 61
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 62
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsb(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public getAllowUsbData(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 87
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 88
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_b

    .line 89
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbData(Landroid/content/ComponentName;)Z

    move-result v1

    return v1

    .line 91
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUsbDrive(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 106
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 107
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_b

    .line 108
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v1

    return v1

    .line 110
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowUsbPort(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 125
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 126
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_b

    .line 127
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v1

    return v1

    .line 129
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 159
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 160
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public getEncryptionPolicy(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 169
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 170
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v1

    return v1
.end method

.method public setAllowBluetooth(Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # I

    .prologue
    .line 14
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 15
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowBluetooth(Landroid/content/ComponentName;I)V

    .line 13
    return-void
.end method

.method public setAllowCamera(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 184
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    if-eqz v0, :cond_a

    .line 185
    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowCameraWithWhitelist(Landroid/content/ComponentName;ZLjava/util/List;)V

    .line 182
    :cond_a
    return-void
.end method

.method public setAllowExternalMemorySlot(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 46
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 47
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowExternalMemorySlot(Landroid/content/ComponentName;Z)V

    .line 45
    return-void
.end method

.method public setAllowHotspot(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 25
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 26
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowHotspot(Landroid/content/ComponentName;Z)V

    .line 24
    return-void
.end method

.method public setAllowTethering(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 36
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 37
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowTethering(Landroid/content/ComponentName;Z)V

    .line 35
    return-void
.end method

.method public setAllowUSBHostStorage(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 136
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 137
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUSBHostStorage(Landroid/content/ComponentName;Z)V

    .line 138
    return-void
.end method

.method public setAllowUSBTethering(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 66
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 67
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUSBTethering(Landroid/content/ComponentName;Z)V

    .line 65
    return-void
.end method

.method public setAllowUsb(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 56
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 57
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUsb(Landroid/content/ComponentName;Z)V

    .line 55
    return-void
.end method

.method public setAllowUsbData(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 79
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 80
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUsbData(Landroid/content/ComponentName;Z)V

    .line 81
    return-void
.end method

.method public setAllowUsbDrive(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 98
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 99
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUsbDrive(Landroid/content/ComponentName;Z)V

    .line 100
    return-void
.end method

.method public setAllowUsbPort(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 117
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 118
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowUsbPort(Landroid/content/ComponentName;Z)V

    .line 119
    return-void
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allow"    # Z

    .prologue
    .line 154
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 155
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 153
    return-void
.end method

.method public setEncryptionPolicy(Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .prologue
    .line 164
    invoke-static {}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    .line 165
    .local v0, "mdm":Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->setEncryptionPolicy(Landroid/content/ComponentName;I)V

    .line 163
    return-void
.end method
