.class public Lcom/lge/mdm/admin/LGMDMGeneralParser;
.super Lcom/lge/mdm/admin/LGMDMXml;
.source "LGMDMGeneralParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneralParser"

.field private static instance:Lcom/lge/mdm/admin/LGMDMGeneralParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/admin/LGMDMGeneralParser;->instance:Lcom/lge/mdm/admin/LGMDMGeneralParser;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/mdm/admin/LGMDMXml;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/admin/LGMDMGeneralParser;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/lge/mdm/admin/LGMDMGeneralParser;->instance:Lcom/lge/mdm/admin/LGMDMGeneralParser;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/lge/mdm/admin/LGMDMGeneralParser;

    invoke-direct {v0}, Lcom/lge/mdm/admin/LGMDMGeneralParser;-><init>()V

    sput-object v0, Lcom/lge/mdm/admin/LGMDMGeneralParser;->instance:Lcom/lge/mdm/admin/LGMDMGeneralParser;

    .line 24
    :cond_b
    sget-object v0, Lcom/lge/mdm/admin/LGMDMGeneralParser;->instance:Lcom/lge/mdm/admin/LGMDMGeneralParser;

    return-object v0
.end method


# virtual methods
.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 16
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
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x4

    .line 350
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 352
    .local v2, "outerDepth":I
    :cond_8
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v10, :cond_5a4

    .line 353
    if-ne v4, v9, :cond_16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_5a4

    .line 354
    :cond_16
    if-eq v4, v9, :cond_8

    if-eq v4, v8, :cond_8

    .line 357
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v5, "policies"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 360
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    .line 366
    :cond_2f
    const-string/jumbo v5, "allow-screencapture"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 367
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCapture:Z

    goto :goto_8

    .line 370
    :cond_3f
    const-string/jumbo v5, "allow-screencapturewithoutadb"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 372
    const-string/jumbo v5, "value"

    .line 371
    invoke-interface {p1, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithoutADB:Z

    .line 373
    const-string/jumbo v5, "GeneralParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readFromXml: allow-screencapturewithoutadb = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 374
    iget-boolean v7, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithoutADB:Z

    .line 373
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 377
    :cond_72
    const-string/jumbo v5, "pre-state-usbdebug"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 378
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebug:I

    goto :goto_8

    .line 381
    :cond_82
    const-string/jumbo v5, "allow-screencapture-with-blacklist"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 382
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithBlacklist:Z

    goto/16 :goto_8

    .line 385
    :cond_93
    const-string/jumbo v5, "allow-screencapture-with-blacklist-without-adb"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 386
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureBlacklistWithoutADB:Z

    goto/16 :goto_8

    .line 389
    :cond_a4
    const-string/jumbo v5, "allow-screencapture-with-whitelist-without-adb"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 390
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWhitelistWithoutADB:Z

    goto/16 :goto_8

    .line 393
    :cond_b5
    const-string/jumbo v5, "pre-state-usbdebug-blacklist"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 394
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebugBlacklist:I

    goto/16 :goto_8

    .line 397
    :cond_c6
    const-string/jumbo v5, "screencapture-whitelist-item"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 398
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 401
    :cond_da
    const-string/jumbo v5, "screencapture-blacklist-item"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 402
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 406
    :cond_ee
    const-string/jumbo v5, "allow-wipedata"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 407
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeData:Z

    goto/16 :goto_8

    .line 411
    :cond_ff
    const-string/jumbo v5, "allow-hardware-factoryreset"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 412
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    goto/16 :goto_8

    .line 415
    :cond_110
    const-string/jumbo v5, "allow-browser"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_121

    .line 416
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowser:Z

    goto/16 :goto_8

    .line 420
    :cond_121
    const-string/jumbo v5, "allow-sendingsms"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_132

    .line 421
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSendingSMS:Z

    goto/16 :goto_8

    .line 425
    :cond_132
    const-string/jumbo v5, "allow-mobilenetwork"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_143

    .line 426
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMobileNetwork:Z

    goto/16 :goto_8

    .line 427
    :cond_143
    const-string/jumbo v5, "pre-state-mobilenetwork"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_154

    .line 428
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateMobileNetwork:Z

    goto/16 :goto_8

    .line 429
    :cond_154
    const-string/jumbo v5, "enforce-mobilenetwork-enabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_165

    .line 430
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    goto/16 :goto_8

    .line 431
    :cond_165
    const-string/jumbo v5, "pre-state-enforce-mobilenetwork"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_176

    .line 432
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateEnforceMobileNetwork:Z

    goto/16 :goto_8

    .line 433
    :cond_176
    const-string/jumbo v5, "pre-state-paypopup"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_187

    .line 434
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->prePayPopup:I

    goto/16 :goto_8

    .line 437
    :cond_187
    const-string/jumbo v5, "allow-dataroaming"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_198

    .line 438
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataRoaming:Z

    goto/16 :goto_8

    .line 439
    :cond_198
    const-string/jumbo v5, "pre-state-dataroaming"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a9

    .line 440
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateDataRoaming:Z

    goto/16 :goto_8

    .line 445
    :cond_1a9
    const-string/jumbo v5, "allow-simplepassword"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1df

    .line 447
    const-string/jumbo v5, "value"

    .line 446
    invoke-interface {p1, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 448
    .local v1, "allowSimplePassword":Z
    if-nez v1, :cond_1c3

    .line 449
    iput v8, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    .line 450
    iput v8, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    .line 452
    :cond_1c3
    const-string/jumbo v5, "GeneralParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readFromXml: allow-simplepassword = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 453
    .end local v1    # "allowSimplePassword":Z
    :cond_1df
    const-string/jumbo v5, "allow-simplepasswordex"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fd

    .line 454
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 455
    .local v0, "allowSimplePassword":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1f5

    .line 456
    iput v9, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    .line 457
    iput v9, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    goto/16 :goto_8

    .line 458
    :cond_1f5
    if-ne v0, v10, :cond_8

    .line 459
    iput v8, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    .line 460
    iput v8, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    goto/16 :goto_8

    .line 462
    .end local v0    # "allowSimplePassword":I
    :cond_1fd
    const-string/jumbo v5, "allow-maximumrepeatedpassword"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20e

    .line 463
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    goto/16 :goto_8

    .line 464
    :cond_20e
    const-string/jumbo v5, "allow-maximumsequentialpassword"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21f

    .line 465
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    goto/16 :goto_8

    .line 466
    :cond_21f
    const-string/jumbo v5, "allow-password-complex-for-eas"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_230

    .line 467
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordComplexForEAS:Z

    goto/16 :goto_8

    .line 470
    :cond_230
    const-string/jumbo v5, "min-password-change"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_241

    .line 471
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->minimumPasswordChange:I

    goto/16 :goto_8

    .line 472
    :cond_241
    const-string/jumbo v5, "password-expiration-date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_252

    .line 473
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordExpirationDate:J

    goto/16 :goto_8

    .line 474
    :cond_252
    const-string/jumbo v5, "password-recovery-enabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_263

    .line 475
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordRecoveryEnabled:Z

    goto/16 :goto_8

    .line 476
    :cond_263
    const-string/jumbo v5, "lockout-now"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_274

    .line 477
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    goto/16 :goto_8

    .line 478
    :cond_274
    const-string/jumbo v5, "lockout-descript"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_285

    .line 479
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    goto/16 :goto_8

    .line 480
    :cond_285
    const-string/jumbo v5, "lockout-recovery-key"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_296

    .line 481
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->hashRecoveryLockout:Ljava/lang/String;

    goto/16 :goto_8

    .line 482
    :cond_296
    const-string/jumbo v5, "allow-EncryptionPolicy"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a7

    .line 483
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicy:I

    goto/16 :goto_8

    .line 484
    :cond_2a7
    const-string/jumbo v5, "allow-encryptionpolicy-for-eas"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b8

    .line 485
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicyForEas:I

    goto/16 :goto_8

    .line 488
    :cond_2b8
    const-string/jumbo v5, "allow_EncryptionPolicy"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c9

    .line 489
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicy:I

    goto/16 :goto_8

    .line 492
    :cond_2c9
    const-string/jumbo v5, "allow_encryptionpolicy_for_eas"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2da

    .line 493
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicyForEas:I

    goto/16 :goto_8

    .line 494
    :cond_2da
    const-string/jumbo v5, "allow-airplane-mode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2eb

    .line 495
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAirplaneMode:Z

    goto/16 :goto_8

    .line 498
    :cond_2eb
    const-string/jumbo v5, "enforce-airplane-mode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2fc

    .line 499
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceAirplaneMode:Z

    goto/16 :goto_8

    .line 500
    :cond_2fc
    const-string/jumbo v5, "pre-state-airplane-mode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30d

    .line 501
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->prestateAirplaneMode:Z

    goto/16 :goto_8

    .line 504
    :cond_30d
    const-string/jumbo v5, "allow-browser-proxy-setup"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31e

    .line 505
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowserProxySetup:Z

    goto/16 :goto_8

    .line 506
    :cond_31e
    const-string/jumbo v5, "browser-proxy-ipaddress"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32f

    .line 507
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mBrowserProxyIPAddress:Ljava/lang/String;

    goto/16 :goto_8

    .line 508
    :cond_32f
    const-string/jumbo v5, "browser-proxy-portnumber"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_340

    .line 509
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mBrowserProxyPortNumber:I

    goto/16 :goto_8

    .line 512
    :cond_340
    const-string/jumbo v5, "allow-os-update"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_351

    .line 513
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOSUpdate:Z

    goto/16 :goto_8

    .line 516
    :cond_351
    const-string/jumbo v5, "allow-outgoing-call"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_362

    .line 517
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOutgoingCall:Z

    goto/16 :goto_8

    .line 519
    :cond_362
    const-string/jumbo v5, "allow-call-in-roaming"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_373

    .line 520
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCallInRoaming:Z

    goto/16 :goto_8

    .line 521
    :cond_373
    const-string/jumbo v5, "allow-dev-mode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_384

    .line 522
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDevMode:Z

    goto/16 :goto_8

    .line 525
    :cond_384
    const-string/jumbo v5, "allow-background-process-limit"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_395

    .line 526
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundProcessLimit:Z

    goto/16 :goto_8

    .line 529
    :cond_395
    const-string/jumbo v5, "allow-clipboard"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a6

    .line 530
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowClipboard:Z

    goto/16 :goto_8

    .line 532
    :cond_3a6
    const-string/jumbo v5, "allow-remove-google-account"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b7

    .line 533
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveGoogleAccount:Z

    goto/16 :goto_8

    .line 535
    :cond_3b7
    const-string/jumbo v5, "enforce-background-data-restricted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c8

    .line 536
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundDataRestricted:Z

    goto/16 :goto_8

    .line 538
    :cond_3c8
    const-string/jumbo v5, "pre-state-backgrounddatarestricted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d9

    .line 539
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBackgroundDataRestricted:Z

    goto/16 :goto_8

    .line 541
    :cond_3d9
    const-string/jumbo v5, "allow-google-backup"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3ea

    .line 542
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleBackup:Z

    goto/16 :goto_8

    .line 543
    :cond_3ea
    const-string/jumbo v5, "pre-state-googlebackup"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3fb

    .line 544
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGoogleBackup:Z

    goto/16 :goto_8

    .line 546
    :cond_3fb
    const-string/jumbo v5, "allow-auto-restore"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40c

    .line 547
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoRestore:Z

    goto/16 :goto_8

    .line 548
    :cond_40c
    const-string/jumbo v5, "pre-state-autorestore"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41d

    .line 549
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAutoRestore:Z

    goto/16 :goto_8

    .line 552
    :cond_41d
    const-string/jumbo v5, "allow-password-typing-visible"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42e

    .line 553
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordTypingVisible:Z

    goto/16 :goto_8

    .line 554
    :cond_42e
    const-string/jumbo v5, "pre-state-passwordtypingvisible"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43f

    .line 555
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStatePasswordTypingVisible:I

    goto/16 :goto_8

    .line 558
    :cond_43f
    const-string/jumbo v5, "allow-status-bar-expansion"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_450

    .line 559
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowStatusBarExpansion:Z

    goto/16 :goto_8

    .line 561
    :cond_450
    const-string/jumbo v5, "notify-remove-google-account-disabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_461

    .line 562
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyRemoveGoogleAccountDisabled:Z

    goto/16 :goto_8

    .line 565
    :cond_461
    const-string/jumbo v5, "allow-multi-user"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_472

    .line 566
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMultiUser:Z

    goto/16 :goto_8

    .line 570
    :cond_472
    const-string/jumbo v5, "allow-password-visible"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_483

    .line 571
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordVisible:Z

    goto/16 :goto_8

    .line 574
    :cond_483
    const-string/jumbo v5, "allow-owner-info"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_494

    .line 575
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->ownerInfo:I

    goto/16 :goto_8

    .line 576
    :cond_494
    const-string/jumbo v5, "pre-state-ownerinfo"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a5

    .line 577
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateOwnerInfo:I

    goto/16 :goto_8

    .line 580
    :cond_4a5
    const-string/jumbo v5, "allow-non-webkitbrowser"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b6

    .line 581
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNonWebkitBrowser:Z

    goto/16 :goto_8

    .line 584
    :cond_4b6
    const-string/jumbo v5, "set-warning-message"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c7

    .line 585
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarningMsg:Z

    goto/16 :goto_8

    .line 586
    :cond_4c7
    const-string/jumbo v5, "warning-message"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d8

    .line 587
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->warningMsg:Ljava/lang/String;

    goto/16 :goto_8

    .line 590
    :cond_4d8
    const-string/jumbo v5, "allow-change-date-and-time"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e9

    .line 591
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeDateAndTime:Z

    goto/16 :goto_8

    .line 592
    :cond_4e9
    const-string/jumbo v5, "pre-state-changedateandtime"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4fa

    .line 593
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeDateAndTime:Z

    goto/16 :goto_8

    .line 597
    :cond_4fa
    const-string/jumbo v5, "allow-change-timezone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50b

    .line 598
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeTimezone:Z

    goto/16 :goto_8

    .line 599
    :cond_50b
    const-string/jumbo v5, "pre-state-changetimezone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51c

    .line 600
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeTimezone:Z

    goto/16 :goto_8

    .line 604
    :cond_51c
    const-string/jumbo v5, "allow-changing-mobile-datausage-cycle"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52d

    .line 605
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangingMobileDataUsageCycle:Z

    goto/16 :goto_8

    .line 609
    :cond_52d
    const-string/jumbo v5, "enforce-limit-mobile-datausage"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53e

    .line 610
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceLimitMobileDataUsage:Z

    goto/16 :goto_8

    .line 611
    :cond_53e
    const-string/jumbo v5, "changing-mobile-datausage-limit"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54f

    .line 612
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageLimit:J

    goto/16 :goto_8

    .line 616
    :cond_54f
    const-string/jumbo v5, "enforce-warn-mobile-datausage"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_560

    .line 617
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarnMobileDataUsage:Z

    goto/16 :goto_8

    .line 618
    :cond_560
    const-string/jumbo v5, "changing-mobile-datausage-warn"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_571

    .line 619
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageWarn:J

    goto/16 :goto_8

    .line 622
    :cond_571
    const-string/jumbo v5, "allow-receivingsmsmms"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_582

    .line 623
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReceivingSmsMms:Z

    goto/16 :goto_8

    .line 626
    :cond_582
    const-string/jumbo v5, "allow-power-off"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_593

    .line 627
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPowerOff:Z

    goto/16 :goto_8

    .line 631
    :cond_593
    const-string/jumbo v5, "commoncriteria-mode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 632
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    goto/16 :goto_8

    .line 349
    .end local v3    # "tag":Ljava/lang/String;
    :cond_5a4
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 11
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
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    const-string/jumbo v1, "policies"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 31
    const-string/jumbo v1, "policies"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCapture:Z

    if-nez v1, :cond_2a

    .line 35
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCapture:Z

    const-string/jumbo v2, "allow-screencapture"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 36
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebug:I

    const-string/jumbo v2, "pre-state-usbdebug"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 39
    :cond_2a
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithoutADB:Z

    if-nez v1, :cond_36

    .line 40
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithoutADB:Z

    .line 41
    const-string/jumbo v2, "allow-screencapturewithoutadb"

    .line 40
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 44
    :cond_36
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithBlacklist:Z

    if-nez v1, :cond_6f

    .line 46
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithBlacklist:Z

    .line 47
    const-string/jumbo v2, "allow-screencapture-with-blacklist"

    .line 46
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 48
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUSBDebugBlacklist:I

    .line 49
    const-string/jumbo v2, "pre-state-usbdebug-blacklist"

    .line 48
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 51
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    if-eqz v1, :cond_6f

    .line 52
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6f

    .line 53
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    .local v0, "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "screencapture-blacklist-item"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 60
    .end local v0    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6f
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureBlacklistWithoutADB:Z

    if-nez v1, :cond_a0

    .line 61
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureBlacklistWithoutADB:Z

    .line 62
    const-string/jumbo v2, "allow-screencapture-with-blacklist-without-adb"

    .line 61
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 64
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    if-eqz v1, :cond_a0

    .line 65
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a0

    .line 66
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    .restart local v0    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "screencapture-blacklist-item"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 73
    .end local v0    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a0
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWhitelistWithoutADB:Z

    if-nez v1, :cond_d1

    .line 74
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWhitelistWithoutADB:Z

    .line 75
    const-string/jumbo v2, "allow-screencapture-with-whitelist-without-adb"

    .line 74
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 77
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    if-eqz v1, :cond_d1

    .line 78
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d1

    .line 79
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->screenCaptureWhitelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    .restart local v0    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "screencapture-whitelist-item"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    .line 86
    .end local v0    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d1
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeData:Z

    if-nez v1, :cond_dd

    .line 88
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowWipeData:Z

    const-string/jumbo v2, "allow-wipedata"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 90
    :cond_dd
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowser:Z

    if-nez v1, :cond_e9

    .line 92
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowser:Z

    const-string/jumbo v2, "allow-browser"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 94
    :cond_e9
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSendingSMS:Z

    if-nez v1, :cond_f5

    .line 96
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSendingSMS:Z

    const-string/jumbo v2, "allow-sendingsms"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 98
    :cond_f5
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMobileNetwork:Z

    if-nez v1, :cond_109

    .line 100
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMobileNetwork:Z

    const-string/jumbo v2, "allow-mobilenetwork"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 102
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateMobileNetwork:Z

    const-string/jumbo v2, "pre-state-mobilenetwork"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 104
    :cond_109
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    if-eqz v1, :cond_125

    .line 106
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceMobileNetworkEnabled:Z

    .line 107
    const-string/jumbo v2, "enforce-mobilenetwork-enabled"

    .line 106
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 108
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateEnforceMobileNetwork:Z

    .line 109
    const-string/jumbo v2, "pre-state-enforce-mobilenetwork"

    .line 108
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 110
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->prePayPopup:I

    const-string/jumbo v2, "pre-state-paypopup"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 112
    :cond_125
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataRoaming:Z

    if-nez v1, :cond_139

    .line 114
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataRoaming:Z

    const-string/jumbo v2, "allow-dataroaming"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 115
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateDataRoaming:Z

    const-string/jumbo v2, "pre-state-dataroaming"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 119
    :cond_139
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSimplePassword:I

    if-lez v1, :cond_145

    .line 121
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSimplePassword:I

    const-string/jumbo v2, "allow-simplepasswordex"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 124
    :cond_145
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    if-le v1, v3, :cond_151

    .line 126
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumRepeatedPassword:I

    const-string/jumbo v2, "allow-maximumrepeatedpassword"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 128
    :cond_151
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    if-le v1, v3, :cond_15d

    .line 130
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMaximumSequentialPassword:I

    const-string/jumbo v2, "allow-maximumsequentialpassword"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 133
    :cond_15d
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordComplexForEAS:Z

    if-eqz v1, :cond_169

    .line 134
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordComplexForEAS:Z

    .line 135
    const-string/jumbo v2, "allow-password-complex-for-eas"

    .line 134
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 138
    :cond_169
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->minimumPasswordChange:I

    if-lez v1, :cond_175

    .line 139
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->minimumPasswordChange:I

    const-string/jumbo v2, "min-password-change"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 142
    :cond_175
    iget-wide v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordExpirationDate:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_185

    .line 143
    iget-wide v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordExpirationDate:J

    const-string/jumbo v1, "password-expiration-date"

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeLongValue(Lorg/xmlpull/v1/XmlSerializer;JLjava/lang/String;)V

    .line 146
    :cond_185
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordRecoveryEnabled:Z

    if-eqz v1, :cond_191

    .line 147
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->passwordRecoveryEnabled:Z

    const-string/jumbo v2, "password-recovery-enabled"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 150
    :cond_191
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    if-lez v1, :cond_1b8

    .line 151
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->lockoutNowLevel:I

    const-string/jumbo v2, "lockout-now"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 153
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    if-eqz v1, :cond_1ac

    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39a

    .line 157
    :cond_1ac
    :goto_1ac
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->hashRecoveryLockout:Ljava/lang/String;

    if-eqz v1, :cond_1b8

    .line 158
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->hashRecoveryLockout:Ljava/lang/String;

    const-string/jumbo v2, "lockout-recovery-key"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1b8
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicy:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1c9

    .line 163
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicy:I

    if-eq v1, v6, :cond_1c9

    .line 164
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicy:I

    const-string/jumbo v2, "allow-EncryptionPolicy"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 167
    :cond_1c9
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicyForEas:I

    if-ge v1, v6, :cond_1d5

    .line 168
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowEncryptionPolicyForEas:I

    .line 169
    const-string/jumbo v2, "allow-encryptionpolicy-for-eas"

    .line 168
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 173
    :cond_1d5
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAirplaneMode:Z

    if-nez v1, :cond_1e1

    .line 174
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAirplaneMode:Z

    const-string/jumbo v2, "allow-airplane-mode"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 178
    :cond_1e1
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceAirplaneMode:Z

    if-eqz v1, :cond_1f5

    .line 179
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceAirplaneMode:Z

    const-string/jumbo v2, "enforce-airplane-mode"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 180
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->prestateAirplaneMode:Z

    const-string/jumbo v2, "pre-state-airplane-mode"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 184
    :cond_1f5
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowserProxySetup:Z

    if-nez v1, :cond_211

    .line 185
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBrowserProxySetup:Z

    const-string/jumbo v2, "allow-browser-proxy-setup"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 186
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mBrowserProxyIPAddress:Ljava/lang/String;

    const-string/jumbo v2, "browser-proxy-ipaddress"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mBrowserProxyPortNumber:I

    const-string/jumbo v2, "browser-proxy-portnumber"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 191
    :cond_211
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundDataRestricted:Z

    if-nez v1, :cond_225

    .line 193
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundDataRestricted:Z

    .line 194
    const-string/jumbo v2, "enforce-background-data-restricted"

    .line 193
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 195
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateBackgroundDataRestricted:Z

    .line 196
    const-string/jumbo v2, "pre-state-backgrounddatarestricted"

    .line 195
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 199
    :cond_225
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOSUpdate:Z

    if-nez v1, :cond_231

    .line 201
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOSUpdate:Z

    const-string/jumbo v2, "allow-os-update"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 205
    :cond_231
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOutgoingCall:Z

    if-nez v1, :cond_23d

    .line 206
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowOutgoingCall:Z

    const-string/jumbo v2, "allow-outgoing-call"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 210
    :cond_23d
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCallInRoaming:Z

    if-nez v1, :cond_249

    .line 211
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCallInRoaming:Z

    const-string/jumbo v2, "allow-call-in-roaming"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 214
    :cond_249
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDevMode:Z

    if-nez v1, :cond_255

    .line 215
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDevMode:Z

    const-string/jumbo v2, "allow-dev-mode"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 219
    :cond_255
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowClipboard:Z

    if-nez v1, :cond_261

    .line 220
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowClipboard:Z

    const-string/jumbo v2, "allow-clipboard"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 224
    :cond_261
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveGoogleAccount:Z

    if-nez v1, :cond_26d

    .line 225
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveGoogleAccount:Z

    .line 226
    const-string/jumbo v2, "allow-remove-google-account"

    .line 225
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 230
    :cond_26d
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleBackup:Z

    if-nez v1, :cond_281

    .line 231
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleBackup:Z

    const-string/jumbo v2, "allow-google-backup"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 232
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateGoogleBackup:Z

    const-string/jumbo v2, "pre-state-googlebackup"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 236
    :cond_281
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoRestore:Z

    if-nez v1, :cond_295

    .line 237
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoRestore:Z

    const-string/jumbo v2, "allow-auto-restore"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 238
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAutoRestore:Z

    const-string/jumbo v2, "pre-state-autorestore"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 242
    :cond_295
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordTypingVisible:Z

    if-nez v1, :cond_2a9

    .line 243
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordTypingVisible:Z

    .line 244
    const-string/jumbo v2, "allow-password-typing-visible"

    .line 243
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 245
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStatePasswordTypingVisible:I

    .line 246
    const-string/jumbo v2, "pre-state-passwordtypingvisible"

    .line 245
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 250
    :cond_2a9
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundProcessLimit:Z

    if-nez v1, :cond_2b5

    .line 251
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowBackgroundProcessLimit:Z

    .line 252
    const-string/jumbo v2, "allow-background-process-limit"

    .line 251
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 256
    :cond_2b5
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarningMsg:Z

    if-eqz v1, :cond_2c9

    .line 257
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarningMsg:Z

    const-string/jumbo v2, "set-warning-message"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 258
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->warningMsg:Ljava/lang/String;

    const-string/jumbo v2, "warning-message"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_2c9
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowStatusBarExpansion:Z

    if-nez v1, :cond_2d5

    .line 263
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowStatusBarExpansion:Z

    const-string/jumbo v2, "allow-status-bar-expansion"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 267
    :cond_2d5
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyRemoveGoogleAccountDisabled:Z

    if-nez v1, :cond_2e1

    .line 268
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyRemoveGoogleAccountDisabled:Z

    .line 269
    const-string/jumbo v2, "notify-remove-google-account-disabled"

    .line 268
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 273
    :cond_2e1
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMultiUser:Z

    if-nez v1, :cond_2ed

    .line 274
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowMultiUser:Z

    const-string/jumbo v2, "allow-multi-user"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 278
    :cond_2ed
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordVisible:Z

    if-nez v1, :cond_2f9

    .line 279
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPasswordVisible:Z

    const-string/jumbo v2, "allow-password-visible"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 283
    :cond_2f9
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->ownerInfo:I

    if-lez v1, :cond_30d

    .line 284
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->ownerInfo:I

    const-string/jumbo v2, "allow-owner-info"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 285
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateOwnerInfo:I

    const-string/jumbo v2, "pre-state-ownerinfo"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 289
    :cond_30d
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNonWebkitBrowser:Z

    if-nez v1, :cond_319

    .line 290
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowNonWebkitBrowser:Z

    const-string/jumbo v2, "allow-non-webkitbrowser"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 294
    :cond_319
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeDateAndTime:Z

    if-nez v1, :cond_32d

    .line 295
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeDateAndTime:Z

    const-string/jumbo v2, "allow-change-date-and-time"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 296
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeDateAndTime:Z

    .line 297
    const-string/jumbo v2, "pre-state-changedateandtime"

    .line 296
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 301
    :cond_32d
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeTimezone:Z

    if-nez v1, :cond_341

    .line 302
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangeTimezone:Z

    const-string/jumbo v2, "allow-change-timezone"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 303
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateChangeTimezone:Z

    const-string/jumbo v2, "pre-state-changetimezone"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 308
    :cond_341
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangingMobileDataUsageCycle:Z

    if-nez v1, :cond_34d

    .line 309
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowChangingMobileDataUsageCycle:Z

    .line 310
    const-string/jumbo v2, "allow-changing-mobile-datausage-cycle"

    .line 309
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 315
    :cond_34d
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceLimitMobileDataUsage:Z

    if-eqz v1, :cond_361

    .line 316
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceLimitMobileDataUsage:Z

    .line 317
    const-string/jumbo v2, "enforce-limit-mobile-datausage"

    .line 316
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 318
    iget-wide v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageLimit:J

    .line 319
    const-string/jumbo v1, "changing-mobile-datausage-limit"

    .line 318
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeLongValue(Lorg/xmlpull/v1/XmlSerializer;JLjava/lang/String;)V

    .line 324
    :cond_361
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarnMobileDataUsage:Z

    if-eqz v1, :cond_375

    .line 325
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->enforceWarnMobileDataUsage:Z

    .line 326
    const-string/jumbo v2, "enforce-warn-mobile-datausage"

    .line 325
    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 327
    iget-wide v2, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->changingMobileDataUsageWarn:J

    .line 328
    const-string/jumbo v1, "changing-mobile-datausage-warn"

    .line 327
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeLongValue(Lorg/xmlpull/v1/XmlSerializer;JLjava/lang/String;)V

    .line 332
    :cond_375
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReceivingSmsMms:Z

    if-nez v1, :cond_381

    .line 333
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowReceivingSmsMms:Z

    const-string/jumbo v2, "allow-receivingsmsmms"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 337
    :cond_381
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPowerOff:Z

    if-nez v1, :cond_38d

    .line 338
    iget-boolean v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPowerOff:Z

    const-string/jumbo v2, "allow-power-off"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 342
    :cond_38d
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    if-lez v1, :cond_399

    .line 343
    iget v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->commonCriteriaMode:I

    const-string/jumbo v2, "commoncriteria-mode"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 28
    :cond_399
    return-void

    .line 154
    :cond_39a
    iget-object v1, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->strLockoutDeScript:Ljava/lang/String;

    const-string/jumbo v2, "lockout-descript"

    invoke-virtual {p0, p1, v1, v2}, Lcom/lge/mdm/admin/LGMDMGeneralParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ac
.end method
