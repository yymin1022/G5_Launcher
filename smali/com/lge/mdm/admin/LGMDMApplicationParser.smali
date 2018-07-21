.class public Lcom/lge/mdm/admin/LGMDMApplicationParser;
.super Lcom/lge/mdm/admin/LGMDMXml;
.source "LGMDMApplicationParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationParser"

.field private static instance:Lcom/lge/mdm/admin/LGMDMApplicationParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/admin/LGMDMApplicationParser;->instance:Lcom/lge/mdm/admin/LGMDMApplicationParser;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lge/mdm/admin/LGMDMXml;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/admin/LGMDMApplicationParser;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/lge/mdm/admin/LGMDMApplicationParser;->instance:Lcom/lge/mdm/admin/LGMDMApplicationParser;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/lge/mdm/admin/LGMDMApplicationParser;

    invoke-direct {v0}, Lcom/lge/mdm/admin/LGMDMApplicationParser;-><init>()V

    sput-object v0, Lcom/lge/mdm/admin/LGMDMApplicationParser;->instance:Lcom/lge/mdm/admin/LGMDMApplicationParser;

    .line 25
    :cond_b
    sget-object v0, Lcom/lge/mdm/admin/LGMDMApplicationParser;->instance:Lcom/lge/mdm/admin/LGMDMApplicationParser;

    return-object v0
.end method


# virtual methods
.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 25
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
    .line 200
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 202
    .local v7, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4f2

    .line 203
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v7, :cond_4f2

    .line 204
    :cond_20
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 207
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 209
    .local v14, "tag":Ljava/lang/String;
    const-string/jumbo v18, "policies"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 210
    invoke-virtual/range {p2 .. p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 216
    :cond_4b
    const-string/jumbo v18, "allow-unknownapplicationinstall"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_65

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnknownApplicationInstall:Z

    goto :goto_4

    .line 218
    :cond_65
    const-string/jumbo v18, "pre-state-unknownapplicationinstall"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_cb

    .line 220
    :try_start_70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_7e} :catch_7f

    goto :goto_4

    .line 221
    :catch_7f
    move-exception v3

    .line 224
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v18, "value"

    const/16 v19, 0x0

    .line 223
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c8

    .line 224
    const/16 v18, 0x1

    .line 223
    :goto_97
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I

    .line 225
    const-string/jumbo v18, "ApplicationParser"

    const-string/jumbo v19, "preStateUnknownAppInstall value is conver to int"

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v18, "ApplicationParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readFromXml: pre-state-unknownapplicationinstall = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 227
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I

    move/from16 v20, v0

    .line 226
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 224
    :cond_c8
    const/16 v18, 0x0

    goto :goto_97

    .line 229
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_cb
    const-string/jumbo v18, "allow-removedeviceadmin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e6

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveDeviceAdmin:Z

    goto/16 :goto_4

    .line 231
    :cond_e6
    const-string/jumbo v18, "prevent-removedeviceadmin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10d

    .line 232
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 233
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 234
    :cond_10d
    const-string/jumbo v18, "allow-screen-pin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_128

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenPin:Z

    goto/16 :goto_4

    .line 236
    :cond_128
    const-string/jumbo v18, "pre-state-allow-screen-pin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_143

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAllowScreenPin:I

    goto/16 :goto_4

    .line 238
    :cond_143
    const-string/jumbo v18, "allow-installapplication"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15e

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowInstallApplication:Z

    goto/16 :goto_4

    .line 240
    :cond_15e
    const-string/jumbo v18, "allow-uninstallapplication"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_179

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUninstallApplication:Z

    goto/16 :goto_4

    .line 242
    :cond_179
    const-string/jumbo v18, "application-state"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20a

    .line 243
    const-string/jumbo v18, "packageName"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "packageName":Ljava/lang/String;
    const-string/jumbo v18, "installation"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 246
    .local v6, "installation":I
    const-string/jumbo v18, "uninstallation"

    .line 245
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 247
    .local v17, "uninstalltion":I
    const-string/jumbo v18, "enable"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 248
    .local v4, "enable":I
    new-instance v13, Lcom/lge/mdm/config/LGMDMApplicationState;

    invoke-direct {v13}, Lcom/lge/mdm/config/LGMDMApplicationState;-><init>()V

    .line 249
    .local v13, "state":Lcom/lge/mdm/config/LGMDMApplicationState;
    invoke-virtual {v13, v8}, Lcom/lge/mdm/config/LGMDMApplicationState;->setPackageName(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v13, v6}, Lcom/lge/mdm/config/LGMDMApplicationState;->setAllowInstallation(I)V

    .line 251
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/lge/mdm/config/LGMDMApplicationState;->setAllowUninstallation(I)V

    .line 252
    invoke-virtual {v13, v4}, Lcom/lge/mdm/config/LGMDMApplicationState;->setEnable(I)V

    .line 253
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    const-string/jumbo v18, "ApplicationParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readFromXml: application-state = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/lge/mdm/config/LGMDMApplicationState;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 256
    .end local v4    # "enable":I
    .end local v6    # "installation":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v13    # "state":Lcom/lge/mdm/config/LGMDMApplicationState;
    .end local v17    # "uninstalltion":I
    :cond_20a
    const-string/jumbo v18, "allow-unsigned-application"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_225

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnsignedApplication:Z

    goto/16 :goto_4

    .line 259
    :cond_225
    const-string/jumbo v18, "runtime-permission-state"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_299

    .line 260
    const-string/jumbo v18, "packageName"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    .restart local v8    # "packageName":Ljava/lang/String;
    const-string/jumbo v18, "permission"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "permission":Ljava/lang/String;
    const-string/jumbo v18, "grantPolicy"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 263
    .local v11, "policy":I
    const-string/jumbo v18, "preState"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 265
    .local v12, "preState":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    .line 266
    .local v10, "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    if-nez v10, :cond_289

    .line 267
    new-instance v10, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    .end local v10    # "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    invoke-direct {v10}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;-><init>()V

    .line 269
    .restart local v10    # "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    :cond_289
    invoke-virtual {v10, v9, v11, v12}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->putPolicy(Ljava/lang/String;II)V

    .line 270
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 273
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "permission":Ljava/lang/String;
    .end local v10    # "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    .end local v11    # "policy":I
    .end local v12    # "preState":I
    :cond_299
    const-string/jumbo v18, "allow-consumeremail"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b4

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    goto/16 :goto_4

    .line 275
    :cond_2b4
    const-string/jumbo v18, "blocking-consumeremail-list"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d2

    .line 276
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 279
    :cond_2d2
    const-string/jumbo v18, "allow-popimapemail"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2ed

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    goto/16 :goto_4

    .line 283
    :cond_2ed
    const-string/jumbo v18, "allow-manualsyncwhenroaming"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_308

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    goto/16 :goto_4

    .line 285
    :cond_308
    const-string/jumbo v18, "pre-master-sync-automatically"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_323

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->preMasterSync:Z

    goto/16 :goto_4

    .line 289
    :cond_323
    const-string/jumbo v18, "allow-lock-down-apps"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_33e

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowrunningapplication:Z

    goto/16 :goto_4

    .line 291
    :cond_33e
    const-string/jumbo v18, "lock-down-apps-package"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_359

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationpackage:Ljava/lang/String;

    goto/16 :goto_4

    .line 293
    :cond_359
    const-string/jumbo v18, "lock-down-apps-activityname"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_374

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationactivity:Ljava/lang/String;

    goto/16 :goto_4

    .line 295
    :cond_374
    const-string/jumbo v18, "lock-down-apps-crash"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_38f

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->runningApplicationMaxCrashNum:I

    goto/16 :goto_4

    .line 299
    :cond_38f
    const-string/jumbo v18, "allow-notify-specific-process-kill-event"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3aa

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allownotifyprocesskillevent:Z

    goto/16 :goto_4

    .line 301
    :cond_3aa
    const-string/jumbo v18, "notify-specific-process-kill-event-packagelist"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3d0

    .line 302
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 303
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    move-object/from16 v18, v0

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 303
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 307
    :cond_3d0
    const-string/jumbo v18, "allow-specificapplication"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_435

    .line 308
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3dc
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_4

    .line 309
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "allow-specificapplication"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 310
    .local v15, "temp_tag":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_432

    .line 311
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 312
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 311
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    aput-boolean v19, v18, v5

    .line 308
    :cond_432
    add-int/lit8 v5, v5, 0x1

    goto :goto_3dc

    .line 318
    .end local v5    # "i":I
    .end local v15    # "temp_tag":Ljava/lang/String;
    :cond_435
    const-string/jumbo v18, "allow-google-error-report"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_450

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleErrorReport:I

    goto/16 :goto_4

    .line 323
    :cond_450
    const-string/jumbo v18, "allow-autosync"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_46b

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoSync:Z

    goto/16 :goto_4

    .line 328
    :cond_46b
    const-string/jumbo v18, "pre-master-autosync"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_486

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->preMasterAutoSync:Z

    goto/16 :goto_4

    .line 333
    :cond_486
    const-string/jumbo v18, "allow-contact-info-access"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4a1

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowContactInfoAccess:I

    goto/16 :goto_4

    .line 337
    :cond_4a1
    const-string/jumbo v18, "enforce-powerbutton-locks"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4bc

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->enforcePowerButtonLocks:Z

    goto/16 :goto_4

    .line 341
    :cond_4bc
    const-string/jumbo v18, "allow-dualwindow-running"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4d7

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDualWindow:Z

    goto/16 :goto_4

    .line 343
    :cond_4d7
    const-string/jumbo v18, "prev-state-dualwindow"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->prevStateDualWindow:I

    goto/16 :goto_4

    .line 199
    .end local v14    # "tag":Ljava/lang/String;
    :cond_4f2
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 25
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
    .line 30
    const-string/jumbo v18, "policies"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 32
    const-string/jumbo v18, "policies"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnknownApplicationInstall:Z

    move/from16 v18, v0

    if-nez v18, :cond_57

    .line 36
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnknownApplicationInstall:Z

    move/from16 v18, v0

    .line 37
    const-string/jumbo v19, "allow-unknownapplicationinstall"

    .line 36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 38
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateUnknownAppInstall:I

    move/from16 v18, v0

    .line 39
    const-string/jumbo v19, "pre-state-unknownapplicationinstall"

    .line 38
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 42
    :cond_57
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveDeviceAdmin:Z

    move/from16 v18, v0

    if-nez v18, :cond_73

    .line 43
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowRemoveDeviceAdmin:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-removedeviceadmin"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 46
    :cond_73
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenPin:Z

    move/from16 v18, v0

    if-nez v18, :cond_a3

    .line 47
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenPin:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-screen-pin"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 48
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preStateAllowScreenPin:I

    move/from16 v18, v0

    const-string/jumbo v19, "pre-state-allow-screen-pin"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 50
    :cond_a3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_dc

    .line 51
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_dc

    .line 52
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preventRemoveDeviceAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 53
    .local v11, "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_c1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_dc

    .line 54
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string/jumbo v19, "prevent-removedeviceadmin"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 58
    .end local v11    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_dc
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowInstallApplication:Z

    move/from16 v18, v0

    if-nez v18, :cond_f8

    .line 59
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowInstallApplication:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-installapplication"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 62
    :cond_f8
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUninstallApplication:Z

    move/from16 v18, v0

    if-nez v18, :cond_114

    .line 63
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUninstallApplication:Z

    move/from16 v18, v0

    .line 64
    const-string/jumbo v19, "allow-uninstallapplication"

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 67
    :cond_114
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d6

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1d6

    .line 68
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mApplicationStateList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "item$iterator":Ljava/util/Iterator;
    :goto_132
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1d6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/mdm/config/LGMDMApplicationState;

    .line 70
    .local v9, "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    const-string/jumbo v18, "application-state"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    const-string/jumbo v18, "packageName"

    invoke-virtual {v9}, Lcom/lge/mdm/config/LGMDMApplicationState;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    const-string/jumbo v18, "installation"

    invoke-virtual {v9}, Lcom/lge/mdm/config/LGMDMApplicationState;->getAllowInstallation()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string/jumbo v18, "uninstallation"

    invoke-virtual {v9}, Lcom/lge/mdm/config/LGMDMApplicationState;->getAllowUninstallation()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string/jumbo v18, "enable"

    invoke-virtual {v9}, Lcom/lge/mdm/config/LGMDMApplicationState;->getEnable()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string/jumbo v18, "application-state"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string/jumbo v18, "ApplicationParser"

    .line 77
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "writeToXml: application-state(mApplicationStateList)= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/lge/mdm/config/LGMDMApplicationState;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 76
    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_132

    .line 80
    .end local v9    # "item":Lcom/lge/mdm/config/LGMDMApplicationState;
    .end local v10    # "item$iterator":Ljava/util/Iterator;
    :cond_1d6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2cd

    .line 81
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v18

    if-lez v18, :cond_2cd

    .line 82
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v16

    .line 83
    .local v16, "sizeList":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1f5
    move/from16 v0, v16

    if-ge v7, v0, :cond_2cd

    .line 84
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 86
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runtimePermissionList:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;

    .line 87
    .local v14, "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    if-eqz v12, :cond_2c9

    if-eqz v14, :cond_2c9

    invoke-virtual {v14}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->size()I

    move-result v18

    if-lez v18, :cond_2c9

    .line 88
    invoke-virtual {v14}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->size()I

    move-result v17

    .line 89
    .local v17, "sizePermission":I
    const/4 v8, 0x0

    .local v8, "index_perm":I
    :goto_224
    move/from16 v0, v17

    if-ge v8, v0, :cond_2c9

    .line 90
    invoke-virtual {v14, v8}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPermissionAt(I)Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "permission":Ljava/lang/String;
    invoke-virtual {v14, v8}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPolicyAt(I)I

    move-result v5

    .line 92
    .local v5, "grantPolicy":I
    invoke-virtual {v14, v8}, Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;->getPreStateAt(I)I

    move-result v15

    .line 93
    .local v15, "preState":I
    if-eqz v13, :cond_2c5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_2c5

    .line 94
    const-string/jumbo v18, "runtime-permission-state"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string/jumbo v18, "packageName"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string/jumbo v18, "permission"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string/jumbo v18, "grantPolicy"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string/jumbo v18, "preState"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string/jumbo v18, "runtime-permission-state"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    const-string/jumbo v18, "ApplicationParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "writeToXml: runtime-permission-state="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 101
    const-string/jumbo v20, ", "

    .line 100
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2c5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_224

    .line 83
    .end local v5    # "grantPolicy":I
    .end local v8    # "index_perm":I
    .end local v13    # "permission":Ljava/lang/String;
    .end local v15    # "preState":I
    .end local v17    # "sizePermission":I
    :cond_2c9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1f5

    .line 108
    .end local v7    # "index":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "permissionMap":Lcom/lge/mdm/admin/LGMDMPermissionPolicyMap;
    .end local v16    # "sizeList":I
    :cond_2cd
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnsignedApplication:Z

    move/from16 v18, v0

    if-nez v18, :cond_2e9

    .line 109
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowUnsignedApplication:Z

    move/from16 v18, v0

    .line 110
    const-string/jumbo v19, "allow-unsigned-application"

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 113
    :cond_2e9
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    move/from16 v18, v0

    if-nez v18, :cond_305

    .line 115
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowConsumerEmail:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-consumeremail"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 118
    :cond_305
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_33e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_33e

    .line 120
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mConsumerEmailList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 121
    .local v4, "blockingConsumerIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_323
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_33e

    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string/jumbo v19, "blocking-consumeremail-list"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_323

    .line 126
    .end local v4    # "blockingConsumerIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_33e
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    move/from16 v18, v0

    if-nez v18, :cond_35a

    .line 127
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowPOPIMAPEmail:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-popimapemail"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 130
    :cond_35a
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_38a

    .line 131
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->manualSyncWhenRoaming:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-manualsyncwhenroaming"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 132
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preMasterSync:Z

    move/from16 v18, v0

    const-string/jumbo v19, "pre-master-sync-automatically"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 134
    :cond_38a
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowrunningapplication:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3ea

    .line 135
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowrunningapplication:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-lock-down-apps"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 136
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationpackage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "lock-down-apps-package"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationactivity:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_43f

    .line 139
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningapplicationactivity:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 140
    const-string/jumbo v19, "lock-down-apps-activityname"

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_3d6
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->runningApplicationMaxCrashNum:I

    move/from16 v18, v0

    const-string/jumbo v19, "lock-down-apps-crash"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 148
    :cond_3ea
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allownotifyprocesskillevent:Z

    move/from16 v18, v0

    if-eqz v18, :cond_451

    .line 149
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allownotifyprocesskillevent:Z

    move/from16 v18, v0

    .line 150
    const-string/jumbo v19, "allow-notify-specific-process-kill-event"

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 152
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_451

    .line 153
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_451

    .line 154
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->notifyprocesskilleventpackagelist:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 155
    .restart local v11    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_424
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_451

    .line 156
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 157
    const-string/jumbo v19, "notify-specific-process-kill-event-packagelist"

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_424

    .line 142
    .end local v11    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_43f
    const-string/jumbo v18, ""

    const-string/jumbo v19, "lock-down-apps-activityname"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d6

    .line 163
    :cond_451
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoSync:Z

    move/from16 v18, v0

    if-nez v18, :cond_481

    .line 164
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowAutoSync:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-autosync"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 165
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->preMasterAutoSync:Z

    move/from16 v18, v0

    const-string/jumbo v19, "pre-master-autosync"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 169
    :cond_481
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleErrorReport:I

    move/from16 v18, v0

    if-eqz v18, :cond_49d

    .line 170
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowGoogleErrorReport:I

    move/from16 v18, v0

    const-string/jumbo v19, "allow-google-error-report"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 174
    :cond_49d
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_49e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_4e5

    .line 175
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v6

    if-nez v18, :cond_4e2

    .line 176
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSpecificApplicationList:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v6

    .line 177
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "allow-specificapplication"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 174
    :cond_4e2
    add-int/lit8 v6, v6, 0x1

    goto :goto_49e

    .line 182
    :cond_4e5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowContactInfoAccess:I

    move/from16 v18, v0

    if-lez v18, :cond_501

    .line 183
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowContactInfoAccess:I

    move/from16 v18, v0

    const-string/jumbo v19, "allow-contact-info-access"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 187
    :cond_501
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforcePowerButtonLocks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_51d

    .line 188
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->enforcePowerButtonLocks:Z

    move/from16 v18, v0

    const-string/jumbo v19, "enforce-powerbutton-locks"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 192
    :cond_51d
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDualWindow:Z

    move/from16 v18, v0

    if-nez v18, :cond_54d

    .line 193
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDualWindow:Z

    move/from16 v18, v0

    const-string/jumbo v19, "allow-dualwindow-running"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 194
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->prevStateDualWindow:I

    move/from16 v18, v0

    const-string/jumbo v19, "prev-state-dualwindow"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mdm/admin/LGMDMApplicationParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 29
    :cond_54d
    return-void
.end method
