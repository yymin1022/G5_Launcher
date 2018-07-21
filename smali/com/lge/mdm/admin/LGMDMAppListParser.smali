.class public Lcom/lge/mdm/admin/LGMDMAppListParser;
.super Lcom/lge/mdm/admin/LGMDMXml;
.source "LGMDMAppListParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMAppListParser"

.field private static instance:Lcom/lge/mdm/admin/LGMDMAppListParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/admin/LGMDMAppListParser;->instance:Lcom/lge/mdm/admin/LGMDMAppListParser;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lge/mdm/admin/LGMDMXml;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/admin/LGMDMAppListParser;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/lge/mdm/admin/LGMDMAppListParser;->instance:Lcom/lge/mdm/admin/LGMDMAppListParser;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/lge/mdm/admin/LGMDMAppListParser;

    invoke-direct {v0}, Lcom/lge/mdm/admin/LGMDMAppListParser;-><init>()V

    sput-object v0, Lcom/lge/mdm/admin/LGMDMAppListParser;->instance:Lcom/lge/mdm/admin/LGMDMAppListParser;

    .line 27
    :cond_b
    sget-object v0, Lcom/lge/mdm/admin/LGMDMAppListParser;->instance:Lcom/lge/mdm/admin/LGMDMAppListParser;

    return-object v0
.end method


# virtual methods
.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 29
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
    .line 115
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 117
    .local v6, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_326

    .line 118
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_326

    .line 119
    :cond_20
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x4

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 122
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "tag":Ljava/lang/String;
    const-string/jumbo v21, "policies"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4b

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 130
    :cond_4b
    const-string/jumbo v21, "lgmdm_application_version_policies.xml"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_fd

    .line 131
    const-string/jumbo v21, "application-version-state"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 132
    const-string/jumbo v21, "packageName"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "packageName":Ljava/lang/String;
    const-string/jumbo v21, "versionName"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 135
    .local v20, "versionName":Ljava/lang/String;
    const-string/jumbo v21, "installation"

    .line 134
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 137
    .local v5, "installation":I
    const-string/jumbo v21, "uninstallation"

    .line 136
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 138
    .local v19, "uninstalltion":I
    const-string/jumbo v21, "enable"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 139
    .local v3, "enable":I
    new-instance v12, Lcom/lge/mdm/config/LGMDMAppVersionState;

    invoke-direct {v12}, Lcom/lge/mdm/config/LGMDMAppVersionState;-><init>()V

    .line 140
    .local v12, "state":Lcom/lge/mdm/config/LGMDMAppVersionState;
    invoke-virtual {v12, v8}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setPackageName(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setVersionName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v12, v5}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setAllowInstallation(I)V

    .line 143
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setAllowUninstallation(I)V

    .line 144
    invoke-virtual {v12, v3}, Lcom/lge/mdm/config/LGMDMAppVersionState;->setEnable(I)V

    .line 145
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mAppVersionStateList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string/jumbo v21, "LGMDMAppListParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readFromXml: application-version-state = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Lcom/lge/mdm/config/LGMDMAppVersionState;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 148
    .end local v3    # "enable":I
    .end local v5    # "installation":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v12    # "state":Lcom/lge/mdm/config/LGMDMAppVersionState;
    .end local v19    # "uninstalltion":I
    .end local v20    # "versionName":Ljava/lang/String;
    :cond_fd
    const-string/jumbo v21, "lgmdm_list_signaturestate_policies.xml"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_29a

    .line 149
    const-string/jumbo v21, "LGMDMAppListParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readFromXml: tag= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v21, "allow-signaturestate"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_141

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMAppListParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSignatureState:Z

    goto/16 :goto_4

    .line 152
    :cond_141
    const-string/jumbo v21, "signature-state"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 154
    const-string/jumbo v21, "installation"

    .line 153
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 156
    .restart local v5    # "installation":I
    const-string/jumbo v21, "uninstallation"

    .line 155
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 157
    .restart local v19    # "uninstalltion":I
    const-string/jumbo v21, "enable"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 158
    .restart local v3    # "enable":I
    const-string/jumbo v21, "packageName"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 161
    .local v11, "signatureKey":[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v16, "tmplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 164
    .local v7, "outerDepth2":I
    const/4 v10, 0x0

    .line 165
    .local v10, "signature":[Landroid/content/pm/Signature;
    :cond_19f
    :goto_19f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type2":I
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_21a

    .line 166
    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1bb

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v7, :cond_21a

    .line 167
    :cond_1bb
    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_19f

    const/16 v21, 0x4

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_19f

    .line 170
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 171
    .local v15, "tag2":Ljava/lang/String;
    const-string/jumbo v21, "signature-key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19f

    .line 172
    const-string/jumbo v21, "signature"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string/jumbo v21, "LGMDMAppListParser"

    .line 175
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readFromXml: signature-key = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 176
    const-string/jumbo v23, "signature"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 175
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 173
    invoke-static/range {v21 .. v22}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19f

    .line 179
    .end local v15    # "tag2":Ljava/lang/String;
    :cond_21a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_4

    .line 180
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [Ljava/lang/String;

    .line 182
    .local v11, "signatureKey":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_229
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v4, v0, :cond_23e

    .line 183
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    aput-object v21, v11, v4

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_229

    .line 185
    :cond_23e
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v10, v0, [Landroid/content/pm/Signature;

    .line 186
    .local v10, "signature":[Landroid/content/pm/Signature;
    const/4 v4, 0x0

    :goto_246
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_259

    .line 187
    new-instance v21, Landroid/content/pm/Signature;

    aget-object v22, v11, v4

    invoke-direct/range {v21 .. v22}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v21, v10, v4

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_246

    .line 190
    :cond_259
    new-instance v13, Lcom/lge/mdm/config/LGMDMSignatureState;

    invoke-direct {v13}, Lcom/lge/mdm/config/LGMDMSignatureState;-><init>()V

    .line 191
    .local v13, "state":Lcom/lge/mdm/config/LGMDMSignatureState;
    invoke-virtual {v13, v10}, Lcom/lge/mdm/config/LGMDMSignatureState;->setSignature([Landroid/content/pm/Signature;)V

    .line 192
    invoke-virtual {v13, v9}, Lcom/lge/mdm/config/LGMDMSignatureState;->setPackageName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v13, v5}, Lcom/lge/mdm/config/LGMDMSignatureState;->setAllowInstallation(I)V

    .line 194
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/lge/mdm/config/LGMDMSignatureState;->setAllowUninstallation(I)V

    .line 195
    invoke-virtual {v13, v3}, Lcom/lge/mdm/config/LGMDMSignatureState;->setEnable(I)V

    .line 196
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const-string/jumbo v21, "LGMDMAppListParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readFromXml: signature-state= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lcom/lge/mdm/config/LGMDMSignatureState;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 200
    .end local v3    # "enable":I
    .end local v4    # "i":I
    .end local v5    # "installation":I
    .end local v7    # "outerDepth2":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "signature":[Landroid/content/pm/Signature;
    .end local v11    # "signatureKey":[Ljava/lang/String;
    .end local v13    # "state":Lcom/lge/mdm/config/LGMDMSignatureState;
    .end local v16    # "tmplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "type2":I
    .end local v19    # "uninstalltion":I
    :cond_29a
    const-string/jumbo v21, "lgmdm_list_ialist_policies.xml"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2e0

    .line 202
    const-string/jumbo v21, "allow-internet-access-list"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2c2

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMAppListParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    goto/16 :goto_4

    .line 204
    :cond_2c2
    const-string/jumbo v21, "ip-address-list-item"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 205
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMAppListParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 207
    :cond_2e0
    const-string/jumbo v21, "lgmdm_cmdlist_policies.xml"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 209
    const-string/jumbo v21, "allow-command-list"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_308

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMAppListParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    goto/16 :goto_4

    .line 211
    :cond_308
    const-string/jumbo v21, "command-list-item"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 212
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/lge/mdm/admin/LGMDMAppListParser;->readString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 114
    .end local v14    # "tag":Ljava/lang/String;
    :cond_326
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 13
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
    const/4 v8, 0x0

    .line 32
    const-string/jumbo v5, "policies"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 34
    const-string/jumbo v5, "policies"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    const-string/jumbo v5, "lgmdm_application_version_policies.xml"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 37
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mAppVersionStateList:Ljava/util/ArrayList;

    if-eqz v5, :cond_202

    .line 38
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mAppVersionStateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_202

    .line 39
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mAppVersionStateList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_202

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mdm/config/LGMDMAppVersionState;

    .line 40
    .local v1, "item":Lcom/lge/mdm/config/LGMDMAppVersionState;
    const-string/jumbo v5, "application-version-state"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    const-string/jumbo v5, "packageName"

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    const-string/jumbo v5, "versionName"

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    const-string/jumbo v5, "installation"

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getAllowInstallation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    const-string/jumbo v5, "uninstallation"

    .line 45
    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getAllowUninstallation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    const-string/jumbo v5, "enable"

    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMAppVersionState;->getEnable()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    const-string/jumbo v5, "application-version-state"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    const-string/jumbo v5, "LGMDMAppListParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeToXml: application-version-state(mAppVersionStateList)= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 49
    invoke-virtual {v1}, Lcom/lge/mdm/config/LGMDMAppVersionState;->toString()Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 52
    .end local v1    # "item":Lcom/lge/mdm/config/LGMDMAppVersionState;
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_a4
    const-string/jumbo v5, "lgmdm_list_signaturestate_policies.xml"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18e

    .line 53
    iget-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSignatureState:Z

    if-nez v5, :cond_202

    .line 54
    iget-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowSignatureState:Z

    const-string/jumbo v6, "allow-signaturestate"

    invoke-virtual {p0, p1, v5, v6}, Lcom/lge/mdm/admin/LGMDMAppListParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 56
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    if-eqz v5, :cond_202

    .line 57
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_202

    .line 58
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mSignatureStateList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "item$iterator":Ljava/util/Iterator;
    :goto_cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_202

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/config/LGMDMSignatureState;

    .line 59
    .local v2, "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    const-string/jumbo v5, "signature-state"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string/jumbo v5, "installation"

    .line 61
    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getAllowInstallation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    const-string/jumbo v5, "uninstallation"

    .line 63
    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getAllowUninstallation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    const-string/jumbo v5, "enable"

    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getEnable()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_117

    .line 66
    const-string/jumbo v5, "packageName"

    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    :cond_117
    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v5

    if-eqz v5, :cond_168

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11e
    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_168

    .line 70
    const-string/jumbo v5, "signature-key"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    const-string/jumbo v5, "signature"

    .line 72
    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string/jumbo v5, "signature-key"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string/jumbo v5, "LGMDMAppListParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeToXml: signature-key =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 75
    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_11e

    .line 78
    .end local v0    # "i":I
    :cond_168
    const-string/jumbo v5, "signature-state"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string/jumbo v5, "LGMDMAppListParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeToXml: signature-state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lge/mdm/config/LGMDMSignatureState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 84
    .end local v2    # "item":Lcom/lge/mdm/config/LGMDMSignatureState;
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_18e
    const-string/jumbo v5, "lgmdm_list_ialist_policies.xml"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c8

    .line 86
    iget v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    if-lez v5, :cond_202

    .line 87
    iget v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowinternetAccessList:I

    .line 88
    const-string/jumbo v6, "allow-internet-access-list"

    .line 87
    invoke-virtual {p0, p1, v5, v6}, Lcom/lge/mdm/admin/LGMDMAppListParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 90
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    if-eqz v5, :cond_202

    .line 91
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_202

    .line 92
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->internetAccessList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 93
    .local v4, "listIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1b5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_202

    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "ip-address-list-item"

    invoke-virtual {p0, p1, v5, v6}, Lcom/lge/mdm/admin/LGMDMAppListParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b5

    .line 98
    .end local v4    # "listIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1c8
    const-string/jumbo v5, "lgmdm_cmdlist_policies.xml"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_202

    .line 100
    iget-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    if-nez v5, :cond_202

    .line 101
    iget-boolean v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowCommandList:Z

    const-string/jumbo v6, "allow-command-list"

    invoke-virtual {p0, p1, v5, v6}, Lcom/lge/mdm/admin/LGMDMAppListParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 103
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    if-eqz v5, :cond_202

    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_202

    .line 104
    iget-object v5, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->commandList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 105
    .restart local v4    # "listIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1ef
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_202

    .line 106
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "command-list-item"

    invoke-virtual {p0, p1, v5, v6}, Lcom/lge/mdm/admin/LGMDMAppListParser;->writeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ef

    .line 31
    .end local v4    # "listIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_202
    return-void
.end method
