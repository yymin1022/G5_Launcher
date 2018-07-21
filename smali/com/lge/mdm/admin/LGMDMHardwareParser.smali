.class public Lcom/lge/mdm/admin/LGMDMHardwareParser;
.super Lcom/lge/mdm/admin/LGMDMXml;
.source "LGMDMHardwareParser.java"


# static fields
.field private static instance:Lcom/lge/mdm/admin/LGMDMHardwareParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/admin/LGMDMHardwareParser;->instance:Lcom/lge/mdm/admin/LGMDMHardwareParser;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/mdm/admin/LGMDMXml;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/admin/LGMDMHardwareParser;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/lge/mdm/admin/LGMDMHardwareParser;->instance:Lcom/lge/mdm/admin/LGMDMHardwareParser;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/lge/mdm/admin/LGMDMHardwareParser;

    invoke-direct {v0}, Lcom/lge/mdm/admin/LGMDMHardwareParser;-><init>()V

    sput-object v0, Lcom/lge/mdm/admin/LGMDMHardwareParser;->instance:Lcom/lge/mdm/admin/LGMDMHardwareParser;

    .line 26
    :cond_b
    sget-object v0, Lcom/lge/mdm/admin/LGMDMHardwareParser;->instance:Lcom/lge/mdm/admin/LGMDMHardwareParser;

    return-object v0
.end method


# virtual methods
.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "mAdminList"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p3, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 426
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 428
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_5c2

    .line 429
    if-ne v4, v7, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_5c2

    .line 430
    :cond_14
    if-eq v4, v7, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    .line 433
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v5, "policies"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 436
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 442
    :cond_2e
    const-string/jumbo v5, "allow-wifi"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 443
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    .line 591
    :cond_3d
    :goto_3d
    const-string/jumbo v5, "allow-usbdebugging"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_311

    .line 592
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBdebugging:Z

    goto :goto_5

    .line 444
    :cond_4d
    const-string/jumbo v5, "pre-state-wifi"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 445
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifi:Z

    goto :goto_3d

    .line 449
    :cond_5d
    const-string/jumbo v5, "allow-wifiscan"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 450
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiScan:Z

    goto :goto_3d

    .line 454
    :cond_6d
    const-string/jumbo v5, "allow-bluetooth"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 455
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    goto :goto_3d

    .line 456
    :cond_7d
    const-string/jumbo v5, "pre-state-bluetooth"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 457
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBluetooth:Z

    goto :goto_3d

    .line 460
    :cond_8d
    const-string/jumbo v5, "allow-bluetoothvisible"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 461
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothVisible:Z

    goto :goto_3d

    .line 462
    :cond_9d
    const-string/jumbo v5, "allow-bluetoothprofile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 463
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    goto :goto_3d

    .line 464
    :cond_ad
    const-string/jumbo v5, "allow-max-visiblity-timeout"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 465
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    goto :goto_3d

    .line 466
    :cond_bd
    const-string/jumbo v5, "allow-searched-devicetype"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 467
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->searchedDeviceType:I

    goto/16 :goto_3d

    .line 468
    :cond_ce
    const-string/jumbo v5, "allow-bluetooth-pairing"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 469
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothPairing:Z

    goto/16 :goto_3d

    .line 473
    :cond_df
    const-string/jumbo v5, "allow-bluetooth-mac-whitelist"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 474
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    goto/16 :goto_3d

    .line 475
    :cond_f0
    const-string/jumbo v5, "bluetooth-org-mac-whitelist-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 476
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 477
    :cond_104
    const-string/jumbo v5, "bluetooth-partial-mac-whitelist-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 478
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 479
    :cond_118
    const-string/jumbo v5, "bluetooth-full-mac-whitelist-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 480
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 484
    :cond_12c
    const-string/jumbo v5, "allow-ExternalMemorySlot"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13d

    .line 485
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowExternalMemorySlot:Z

    goto/16 :goto_3d

    .line 486
    :cond_13d
    const-string/jumbo v5, "pre-state-ExternalMemorySlot"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    .line 487
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateExternalMemorySlot:Z

    goto/16 :goto_3d

    .line 491
    :cond_14e
    const-string/jumbo v5, "allow-cid-with-whitelist"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15f

    .line 492
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCIDWhitelist:Z

    goto/16 :goto_3d

    .line 493
    :cond_15f
    const-string/jumbo v5, "cid-whitelist-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_173

    .line 494
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 498
    :cond_173
    const-string/jumbo v5, "allow-wirelesslocation-with-whitelist"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_184

    .line 499
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocationWhitelist:Z

    goto/16 :goto_3d

    .line 500
    :cond_184
    const-string/jumbo v5, "wirelesslocation-whitelist-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    .line 501
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 505
    :cond_198
    const-string/jumbo v5, "allow-GPSLocation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a9

    .line 506
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    goto/16 :goto_3d

    .line 510
    :cond_1a9
    const-string/jumbo v5, "enforce-gpslocationenabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ba

    .line 511
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceGPSLocationEnabled:Z

    goto/16 :goto_3d

    .line 515
    :cond_1ba
    const-string/jumbo v5, "allow-WirelessLocation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cb

    .line 516
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocation:Z

    goto/16 :goto_3d

    .line 517
    :cond_1cb
    const-string/jumbo v5, "pre-state-GPSLocation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1dc

    .line 518
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGPSLocation:Z

    goto/16 :goto_3d

    .line 519
    :cond_1dc
    const-string/jumbo v5, "pre-state-WirelessLocation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 520
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWirelessLocation:Z

    goto/16 :goto_3d

    .line 521
    :cond_1ed
    const-string/jumbo v5, "allow-MockLocation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fe

    .line 522
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    goto/16 :goto_3d

    .line 523
    :cond_1fe
    const-string/jumbo v5, "pre-MockLocation-packageName"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20f

    .line 524
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preMockLocationPackageName:Ljava/lang/String;

    goto/16 :goto_3d

    .line 525
    :cond_20f
    const-string/jumbo v5, "allow-passiveprovider"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_220

    .line 526
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPassiveProvider:Z

    goto/16 :goto_3d

    .line 530
    :cond_220
    const-string/jumbo v5, "allow-imei"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_231

    .line 531
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIMEI:Z

    goto/16 :goto_3d

    .line 532
    :cond_231
    const-string/jumbo v5, "allow-imsi"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_242

    .line 533
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIMSI:Z

    goto/16 :goto_3d

    .line 537
    :cond_242
    const-string/jumbo v5, "allow-microphone"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_253

    .line 538
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    goto/16 :goto_3d

    .line 541
    :cond_253
    const-string/jumbo v5, "microphone-whitelist-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_267

    .line 542
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 545
    :cond_267
    const-string/jumbo v5, "pre-state-googlevoice"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_278

    .line 546
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mMicrophoneIMEPackageName:Ljava/lang/String;

    goto/16 :goto_3d

    .line 550
    :cond_278
    const-string/jumbo v5, "usb-allow"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_289

    .line 551
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    goto/16 :goto_3d

    .line 552
    :cond_289
    const-string/jumbo v5, "pre-usb-adb-enabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29a

    .line 553
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preUsbAdbEnabled:Z

    goto/16 :goto_3d

    .line 557
    :cond_29a
    const-string/jumbo v5, "allow-tethering"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ab

    .line 558
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z

    goto/16 :goto_3d

    .line 562
    :cond_2ab
    const-string/jumbo v5, "usb-data-allow"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2bc

    .line 563
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbData:Z

    goto/16 :goto_3d

    .line 566
    :cond_2bc
    const-string/jumbo v5, "usb-drive-allow"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2cd

    .line 567
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    goto/16 :goto_3d

    .line 570
    :cond_2cd
    const-string/jumbo v5, "usb-port-allow"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2de

    .line 571
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    goto/16 :goto_3d

    .line 576
    :cond_2de
    const-string/jumbo v5, "allow-hotspot"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ef

    .line 577
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    goto/16 :goto_3d

    .line 581
    :cond_2ef
    const-string/jumbo v5, "allow-usbtethering"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_300

    .line 582
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBTethering:Z

    goto/16 :goto_3d

    .line 586
    :cond_300
    const-string/jumbo v5, "allow-bluetoothtethering"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 587
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothTethering:Z

    goto/16 :goto_3d

    .line 593
    :cond_311
    const-string/jumbo v5, "pre-state-usbadb"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_322

    .line 594
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBAdb:I

    goto/16 :goto_5

    .line 598
    :cond_322
    const-string/jumbo v5, "allow-nfc"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_333

    .line 599
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    goto/16 :goto_5

    .line 603
    :cond_333
    const-string/jumbo v5, "allow-androidbeam"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_344

    .line 604
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAndroidBeam:Z

    goto/16 :goto_5

    .line 608
    :cond_344
    const-string/jumbo v5, "allow-camera-with-whitelist"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_355

    .line 609
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    goto/16 :goto_5

    .line 610
    :cond_355
    const-string/jumbo v5, "camera-whitelist-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_369

    .line 611
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 614
    :cond_369
    const-string/jumbo v5, "allow-wifi-security"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37a

    .line 615
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiSecurity:I

    goto/16 :goto_5

    .line 618
    :cond_37a
    const-string/jumbo v5, "allow-ssid-list-type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38b

    .line 619
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    goto/16 :goto_5

    .line 620
    :cond_38b
    const-string/jumbo v5, "wifi-ssid-list-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39f

    .line 621
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 624
    :cond_39f
    const-string/jumbo v5, "allow-mac-address-list-type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b0

    .line 625
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    goto/16 :goto_5

    .line 626
    :cond_3b0
    const-string/jumbo v5, "wifi-mac-address-list-item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c4

    .line 627
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 631
    :cond_3c4
    const-string/jumbo v5, "allow-specifickey"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_408

    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3ce
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 633
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "allow-specifickey"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "temp_tag":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_405

    .line 636
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    .line 637
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 636
    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    :cond_405
    add-int/lit8 v0, v0, 0x1

    goto :goto_3ce

    .line 644
    .end local v0    # "i":I
    .end local v3    # "temp_tag":Ljava/lang/String;
    :cond_408
    const-string/jumbo v5, "allow-usb-mtp"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_419

    .line 645
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbMtp:Z

    goto/16 :goto_5

    .line 649
    :cond_419
    const-string/jumbo v5, "allow-usb-ptp"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42a

    .line 650
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPtp:Z

    goto/16 :goto_5

    .line 654
    :cond_42a
    const-string/jumbo v5, "allow-usb-storage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43b

    .line 655
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbStorage:Z

    goto/16 :goto_5

    .line 658
    :cond_43b
    const-string/jumbo v5, "allow-wifiprofile-management"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44c

    .line 659
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiProfileManagement:Z

    goto/16 :goto_5

    .line 662
    :cond_44c
    const-string/jumbo v5, "allow-wifi-direct"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 663
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiDirect:Z

    goto/16 :goto_5

    .line 664
    :cond_45d
    const-string/jumbo v5, "pre-state-wifi-direct"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46e

    .line 665
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifiDirect:Z

    goto/16 :goto_5

    .line 669
    :cond_46e
    const-string/jumbo v5, "allow-miracast"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47f

    .line 670
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMiracast:Z

    goto/16 :goto_5

    .line 674
    :cond_47f
    const-string/jumbo v5, "allow-wireless-storage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_490

    .line 675
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessStorage:I

    goto/16 :goto_5

    .line 679
    :cond_490
    const-string/jumbo v5, "allow-VerizonLocation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a1

    .line 680
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVerizonLocation:Z

    goto/16 :goto_5

    .line 681
    :cond_4a1
    const-string/jumbo v5, "pre-state-VerizonLocation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b2

    .line 682
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateVerizonLocation:Z

    goto/16 :goto_5

    .line 686
    :cond_4b2
    const-string/jumbo v5, "allow-usb-host-storage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c3

    .line 687
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBHostStorage:Z

    goto/16 :goto_5

    .line 688
    :cond_4c3
    const-string/jumbo v5, "pre-state-usb-host-storage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d4

    .line 689
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBHostStorage:Z

    goto/16 :goto_5

    .line 693
    :cond_4d4
    const-string/jumbo v5, "allow-shortcut-key"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e5

    .line 694
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowShortcutKey:Z

    goto/16 :goto_5

    .line 697
    :cond_4e5
    const-string/jumbo v5, "pre-state-shortcut-key"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f6

    .line 698
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateShortcutKey:Z

    goto/16 :goto_5

    .line 702
    :cond_4f6
    const-string/jumbo v5, "allow-vpn"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_507

    .line 703
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpn:I

    goto/16 :goto_5

    .line 707
    :cond_507
    const-string/jumbo v5, "allow-wifi-auto-connect"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_518

    .line 708
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiAutoConnect:Z

    goto/16 :goto_5

    .line 711
    :cond_518
    const-string/jumbo v5, "allow-vpn-split-tunneling"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_529

    .line 712
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpnSplitTunneling:Z

    goto/16 :goto_5

    .line 716
    :cond_529
    const-string/jumbo v5, "allow-dlna-discovery"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53a

    .line 717
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDLNADiscovery:Z

    goto/16 :goto_5

    .line 721
    :cond_53a
    const-string/jumbo v5, "allow-infrared-port"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54b

    .line 722
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIR:Z

    goto/16 :goto_5

    .line 726
    :cond_54b
    const-string/jumbo v5, "enforce-mute-during-call"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55c

    .line 727
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMuteDuringCall:Z

    goto/16 :goto_5

    .line 731
    :cond_55c
    const-string/jumbo v5, "enforce-usb-as-none"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56d

    .line 732
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    goto/16 :goto_5

    .line 736
    :cond_56d
    const-string/jumbo v5, "allow-quick-circle"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57e

    .line 737
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowQuickCircle:Z

    goto/16 :goto_5

    .line 739
    :cond_57e
    const-string/jumbo v5, "pre-state-quick-circle"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58f

    .line 740
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateQuickCircle:I

    goto/16 :goto_5

    .line 744
    :cond_58f
    const-string/jumbo v5, "allow-safe-mode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a0

    .line 745
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSafeMode:Z

    goto/16 :goto_5

    .line 748
    :cond_5a0
    const-string/jumbo v5, "allow-readyto-connectin-bluetooth"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b1

    .line 749
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    goto/16 :goto_5

    .line 751
    :cond_5b1
    const-string/jumbo v5, "pre-readyto-connectin-bluetooth"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 752
    invoke-virtual {p0, p1, v2}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preReadyToConnectInBluetooth:I

    goto/16 :goto_5

    .line 425
    .end local v2    # "tag":Ljava/lang/String;
    :cond_5c2
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "mAdminList"    # Lcom/lge/mdm/admin/LGMDMadminlist;
    .param p3, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string/jumbo v2, "policies"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 33
    const-string/jumbo v2, "policies"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    if-nez v2, :cond_28

    .line 37
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifi:Z

    const-string/jumbo v3, "allow-wifi"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 39
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifi:Z

    const-string/jumbo v3, "pre-state-wifi"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 42
    :cond_28
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiScan:Z

    if-nez v2, :cond_34

    .line 43
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiScan:Z

    const-string/jumbo v3, "allow-wifiscan"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 45
    :cond_34
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_49

    .line 47
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetooth:I

    const-string/jumbo v3, "allow-bluetooth"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 48
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBluetooth:Z

    const-string/jumbo v3, "pre-state-bluetooth"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 51
    :cond_49
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothVisible:Z

    if-nez v2, :cond_55

    .line 53
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothVisible:Z

    const-string/jumbo v3, "allow-bluetoothvisible"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 55
    :cond_55
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_63

    .line 57
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothProfile:I

    const-string/jumbo v3, "allow-bluetoothprofile"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 59
    :cond_63
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    if-eqz v2, :cond_6f

    .line 61
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->maxVisiblityTimeOut:I

    const-string/jumbo v3, "allow-max-visiblity-timeout"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 63
    :cond_6f
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->searchedDeviceType:I

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_7d

    .line 65
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->searchedDeviceType:I

    const-string/jumbo v3, "allow-searched-devicetype"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 67
    :cond_7d
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothPairing:Z

    if-nez v2, :cond_89

    .line 69
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothPairing:Z

    const-string/jumbo v3, "allow-bluetooth-pairing"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 73
    :cond_89
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    if-nez v2, :cond_104

    .line 74
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothWithMACWhitelist:Z

    .line 75
    const-string/jumbo v3, "allow-bluetooth-mac-whitelist"

    .line 74
    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 77
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    if-eqz v2, :cond_ba

    .line 78
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_ba

    .line 80
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothOrgMACWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "bluetooth-org-mac-whitelist-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 85
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_ba
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    if-eqz v2, :cond_df

    .line 86
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_df

    .line 88
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothPartialMACWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    .restart local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_cc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "bluetooth-partial-mac-whitelist-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cc

    .line 93
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_df
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    if-eqz v2, :cond_104

    .line 94
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_104

    .line 96
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->bluetoothFullMACWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 97
    .restart local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "bluetooth-full-mac-whitelist-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1

    .line 103
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_104
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowExternalMemorySlot:Z

    if-nez v2, :cond_118

    .line 105
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowExternalMemorySlot:Z

    const-string/jumbo v3, "allow-ExternalMemorySlot"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 106
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateExternalMemorySlot:Z

    .line 107
    const-string/jumbo v3, "pre-state-ExternalMemorySlot"

    .line 106
    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 110
    :cond_118
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCIDWhitelist:Z

    if-eqz v2, :cond_149

    .line 111
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCIDWhitelist:Z

    const-string/jumbo v3, "allow-cid-with-whitelist"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 113
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    if-eqz v2, :cond_149

    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_149

    .line 114
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mCIDWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .restart local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_136
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_149

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "cid-whitelist-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_136

    .line 121
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_149
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    if-nez v2, :cond_155

    .line 122
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGPSLocation:Z

    const-string/jumbo v3, "allow-GPSLocation"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 126
    :cond_155
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceGPSLocationEnabled:Z

    if-eqz v2, :cond_161

    .line 127
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceGPSLocationEnabled:Z

    .line 128
    const-string/jumbo v3, "enforce-gpslocationenabled"

    .line 127
    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 132
    :cond_161
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocation:Z

    if-nez v2, :cond_16d

    .line 133
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocation:Z

    const-string/jumbo v3, "allow-WirelessLocation"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 137
    :cond_16d
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocationWhitelist:Z

    if-nez v2, :cond_19e

    .line 138
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessLocationWhitelist:Z

    .line 139
    const-string/jumbo v3, "allow-wirelesslocation-with-whitelist"

    .line 138
    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 141
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    if-eqz v2, :cond_19e

    .line 142
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19e

    .line 143
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->wirelessLocationWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 144
    .restart local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_18b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "wirelesslocation-whitelist-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18b

    .line 150
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_19e
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGPSLocation:Z

    if-eqz v2, :cond_1aa

    .line 151
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGPSLocation:Z

    const-string/jumbo v3, "pre-state-GPSLocation"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 154
    :cond_1aa
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWirelessLocation:Z

    if-eqz v2, :cond_1b6

    .line 155
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWirelessLocation:Z

    .line 156
    const-string/jumbo v3, "pre-state-WirelessLocation"

    .line 155
    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 159
    :cond_1b6
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    if-nez v2, :cond_1d2

    .line 160
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMockLocation:Z

    const-string/jumbo v3, "allow-MockLocation"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 161
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preMockLocationPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d2

    .line 162
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preMockLocationPackageName:Ljava/lang/String;

    const-string/jumbo v3, "pre-MockLocation-packageName"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1d2
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPassiveProvider:Z

    if-nez v2, :cond_1de

    .line 169
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPassiveProvider:Z

    const-string/jumbo v3, "allow-passiveprovider"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 172
    :cond_1de
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIMEI:Z

    if-nez v2, :cond_1ea

    .line 174
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIMEI:Z

    const-string/jumbo v3, "allow-imei"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 177
    :cond_1ea
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIMSI:Z

    if-nez v2, :cond_1f6

    .line 178
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIMSI:Z

    const-string/jumbo v3, "allow-imsi"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 181
    :cond_1f6
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    if-nez v2, :cond_22f

    .line 183
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMicroPhone:Z

    const-string/jumbo v3, "allow-microphone"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 185
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    if-eqz v2, :cond_227

    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_227

    .line 186
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->microphoneWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    .restart local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_214
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_227

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "microphone-whitelist-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_214

    .line 192
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_227
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mMicrophoneIMEPackageName:Ljava/lang/String;

    const-string/jumbo v3, "pre-state-googlevoice"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_22f
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    if-nez v2, :cond_243

    .line 197
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsb:Z

    const-string/jumbo v3, "usb-allow"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 198
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preUsbAdbEnabled:Z

    const-string/jumbo v3, "pre-usb-adb-enabled"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 202
    :cond_243
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbData:Z

    if-nez v2, :cond_24f

    .line 204
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbData:Z

    const-string/jumbo v3, "usb-data-allow"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 207
    :cond_24f
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    if-nez v2, :cond_25b

    .line 209
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbDrive:Z

    const-string/jumbo v3, "usb-drive-allow"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 212
    :cond_25b
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    if-nez v2, :cond_267

    .line 214
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPort:Z

    const-string/jumbo v3, "usb-port-allow"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 218
    :cond_267
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z

    if-nez v2, :cond_273

    .line 220
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowTethering:Z

    const-string/jumbo v3, "allow-tethering"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 223
    :cond_273
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    if-nez v2, :cond_27f

    .line 225
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHotspot:Z

    const-string/jumbo v3, "allow-hotspot"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 228
    :cond_27f
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBTethering:Z

    if-nez v2, :cond_28b

    .line 230
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBTethering:Z

    const-string/jumbo v3, "allow-usbtethering"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 233
    :cond_28b
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothTethering:Z

    if-nez v2, :cond_297

    .line 235
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBluetoothTethering:Z

    const-string/jumbo v3, "allow-bluetoothtethering"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 238
    :cond_297
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBdebugging:Z

    if-nez v2, :cond_2ab

    .line 240
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBdebugging:Z

    const-string/jumbo v3, "allow-usbdebugging"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 241
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBAdb:I

    const-string/jumbo v3, "pre-state-usbadb"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 244
    :cond_2ab
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b8

    .line 246
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNfc:I

    const-string/jumbo v3, "allow-nfc"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 250
    :cond_2b8
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAndroidBeam:Z

    if-nez v2, :cond_2c4

    .line 251
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAndroidBeam:Z

    const-string/jumbo v3, "allow-androidbeam"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 254
    :cond_2c4
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    if-nez v2, :cond_2f5

    .line 256
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->setAllowCameraWhitelist:Z

    .line 257
    const-string/jumbo v3, "allow-camera-with-whitelist"

    .line 256
    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 259
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    if-eqz v2, :cond_2f5

    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2f5

    .line 260
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->cameraWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    .restart local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f5

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "camera-whitelist-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e2

    .line 268
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2f5
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiSecurity:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_306

    .line 269
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiSecurity:I

    if-lez v2, :cond_306

    .line 270
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiSecurity:I

    const-string/jumbo v3, "allow-wifi-security"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 273
    :cond_306
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    if-eqz v2, :cond_337

    .line 274
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlistType:I

    const-string/jumbo v3, "allow-ssid-list-type"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 276
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    if-eqz v2, :cond_337

    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_337

    .line 278
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiSSIDlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 279
    .restart local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_324
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_337

    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "wifi-ssid-list-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_324

    .line 286
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_337
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    if-eqz v2, :cond_368

    .line 287
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslistType:I

    .line 288
    const-string/jumbo v3, "allow-mac-address-list-type"

    .line 287
    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 290
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    if-eqz v2, :cond_368

    .line 291
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_368

    .line 293
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiMacAddresslist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 294
    .restart local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_355
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_368

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "wifi-mac-address-list-item"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_355

    .line 302
    .end local v1    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_369
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a9

    .line 303
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3a6

    .line 304
    iget-object v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificKeyArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "allow-specifickey"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 302
    :cond_3a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_369

    .line 310
    :cond_3a9
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbMtp:Z

    if-nez v2, :cond_3b5

    .line 312
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbMtp:Z

    const-string/jumbo v3, "allow-usb-mtp"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 315
    :cond_3b5
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPtp:Z

    if-nez v2, :cond_3c1

    .line 317
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbPtp:Z

    const-string/jumbo v3, "allow-usb-ptp"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 320
    :cond_3c1
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbStorage:Z

    if-nez v2, :cond_3cd

    .line 322
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUsbStorage:Z

    const-string/jumbo v3, "allow-usb-storage"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 326
    :cond_3cd
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessStorage:I

    if-eqz v2, :cond_3d9

    .line 327
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWirelessStorage:I

    const-string/jumbo v3, "allow-wireless-storage"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 331
    :cond_3d9
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiDirect:Z

    if-nez v2, :cond_3ed

    .line 332
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiDirect:Z

    const-string/jumbo v3, "allow-wifi-direct"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 333
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateWifiDirect:Z

    const-string/jumbo v3, "pre-state-wifi-direct"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 337
    :cond_3ed
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMiracast:Z

    if-nez v2, :cond_3f9

    .line 338
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMiracast:Z

    const-string/jumbo v3, "allow-miracast"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 342
    :cond_3f9
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiProfileManagement:Z

    if-nez v2, :cond_405

    .line 343
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWiFiProfileManagement:Z

    .line 344
    const-string/jumbo v3, "allow-wifiprofile-management"

    .line 343
    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 348
    :cond_405
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVerizonLocation:Z

    if-nez v2, :cond_411

    .line 349
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVerizonLocation:Z

    const-string/jumbo v3, "allow-VerizonLocation"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 352
    :cond_411
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateVerizonLocation:Z

    if-eqz v2, :cond_41d

    .line 353
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateVerizonLocation:Z

    const-string/jumbo v3, "pre-state-VerizonLocation"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 357
    :cond_41d
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBHostStorage:Z

    if-nez v2, :cond_431

    .line 358
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUSBHostStorage:Z

    const-string/jumbo v3, "allow-usb-host-storage"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 359
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBHostStorage:Z

    const-string/jumbo v3, "pre-state-usb-host-storage"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 363
    :cond_431
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowShortcutKey:Z

    if-nez v2, :cond_43d

    .line 364
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowShortcutKey:Z

    const-string/jumbo v3, "allow-shortcut-key"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 367
    :cond_43d
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateShortcutKey:Z

    if-nez v2, :cond_449

    .line 368
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateShortcutKey:Z

    const-string/jumbo v3, "pre-state-shortcut-key"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 372
    :cond_449
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpn:I

    if-lez v2, :cond_455

    .line 373
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpn:I

    const-string/jumbo v3, "allow-vpn"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 377
    :cond_455
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiAutoConnect:Z

    if-nez v2, :cond_461

    .line 378
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWifiAutoConnect:Z

    const-string/jumbo v3, "allow-wifi-auto-connect"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 382
    :cond_461
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpnSplitTunneling:Z

    if-nez v2, :cond_46d

    .line 383
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowVpnSplitTunneling:Z

    const-string/jumbo v3, "allow-vpn-split-tunneling"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 387
    :cond_46d
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDLNADiscovery:Z

    if-nez v2, :cond_479

    .line 388
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDLNADiscovery:Z

    const-string/jumbo v3, "allow-dlna-discovery"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 392
    :cond_479
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIR:Z

    if-nez v2, :cond_485

    .line 393
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowIR:Z

    const-string/jumbo v3, "allow-infrared-port"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 397
    :cond_485
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMuteDuringCall:Z

    if-eqz v2, :cond_491

    .line 398
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMuteDuringCall:Z

    const-string/jumbo v3, "enforce-mute-during-call"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 402
    :cond_491
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    if-eqz v2, :cond_49d

    .line 403
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceUsbAsNone:Z

    const-string/jumbo v3, "enforce-usb-as-none"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 407
    :cond_49d
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowQuickCircle:Z

    if-nez v2, :cond_4b1

    .line 408
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowQuickCircle:Z

    const-string/jumbo v3, "allow-quick-circle"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 409
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateQuickCircle:I

    const-string/jumbo v3, "pre-state-quick-circle"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 413
    :cond_4b1
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSafeMode:Z

    if-nez v2, :cond_4bd

    .line 414
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSafeMode:Z

    const-string/jumbo v3, "allow-safe-mode"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 418
    :cond_4bd
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    if-nez v2, :cond_4d1

    .line 419
    iget-boolean v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReadyToConnectInBluetooth:Z

    const-string/jumbo v3, "allow-readyto-connectin-bluetooth"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 420
    iget v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preReadyToConnectInBluetooth:I

    const-string/jumbo v3, "pre-readyto-connectin-bluetooth"

    invoke-virtual {p0, p1, v2, v3}, Lcom/lge/mdm/admin/LGMDMHardwareParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 30
    :cond_4d1
    return-void
.end method
