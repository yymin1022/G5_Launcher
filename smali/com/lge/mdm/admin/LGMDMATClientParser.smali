.class public Lcom/lge/mdm/admin/LGMDMATClientParser;
.super Lcom/lge/mdm/admin/LGMDMXml;
.source "LGMDMATClientParser.java"


# static fields
.field private static instance:Lcom/lge/mdm/admin/LGMDMATClientParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/admin/LGMDMATClientParser;->instance:Lcom/lge/mdm/admin/LGMDMATClientParser;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lge/mdm/admin/LGMDMXml;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/admin/LGMDMATClientParser;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/lge/mdm/admin/LGMDMATClientParser;->instance:Lcom/lge/mdm/admin/LGMDMATClientParser;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/lge/mdm/admin/LGMDMATClientParser;

    invoke-direct {v0}, Lcom/lge/mdm/admin/LGMDMATClientParser;-><init>()V

    sput-object v0, Lcom/lge/mdm/admin/LGMDMATClientParser;->instance:Lcom/lge/mdm/admin/LGMDMATClientParser;

    .line 21
    :cond_b
    sget-object v0, Lcom/lge/mdm/admin/LGMDMATClientParser;->instance:Lcom/lge/mdm/admin/LGMDMATClientParser;

    return-object v0
.end method


# virtual methods
.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 9
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
    const/4 v4, 0x3

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 49
    .local v0, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_67

    .line 50
    if-ne v2, v4, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_67

    .line 51
    :cond_14
    if-eq v2, v4, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v3, "policies"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 57
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 62
    :cond_2e
    const-string/jumbo v3, "allow-downloadmode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 63
    const-string/jumbo v3, "allow-downloadmode"

    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMATClientParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDownloadMode:Z

    goto :goto_5

    .line 66
    :cond_41
    const-string/jumbo v3, "allow-data-transmission-via-audioport"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 68
    const-string/jumbo v3, "allow-data-transmission-via-audioport"

    .line 67
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMATClientParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataTransmissionViaAudioport:Z

    goto :goto_5

    .line 71
    :cond_54
    const-string/jumbo v3, "allow-hw-factoryreset-with-atclient"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    const-string/jumbo v3, "allow-hw-factoryreset-with-atclient"

    .line 73
    invoke-virtual {p0, p1, v3}, Lcom/lge/mdm/admin/LGMDMATClientParser;->readBooleanValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    goto :goto_5

    .line 46
    .end local v1    # "tag":Ljava/lang/String;
    :cond_67
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/lge/mdm/admin/LGMDMadminlist;Ljava/lang/String;)V
    .registers 6
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
    const/4 v1, 0x0

    .line 26
    const-string/jumbo v0, "policies"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 28
    const-string/jumbo v0, "policies"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    iget-boolean v0, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDownloadMode:Z

    if-nez v0, :cond_20

    .line 31
    iget-boolean v0, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDownloadMode:Z

    const-string/jumbo v1, "allow-downloadmode"

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/mdm/admin/LGMDMATClientParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 34
    :cond_20
    iget-boolean v0, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataTransmissionViaAudioport:Z

    if-nez v0, :cond_2c

    .line 35
    iget-boolean v0, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowDataTransmissionViaAudioport:Z

    .line 36
    const-string/jumbo v1, "allow-data-transmission-via-audioport"

    .line 35
    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/mdm/admin/LGMDMATClientParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 39
    :cond_2c
    iget-boolean v0, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    if-nez v0, :cond_38

    .line 40
    iget-boolean v0, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->allowHWfactoryResetWithATClient:Z

    .line 41
    const-string/jumbo v1, "allow-hw-factoryreset-with-atclient"

    .line 40
    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/mdm/admin/LGMDMATClientParser;->writeBooleanValue(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 25
    :cond_38
    return-void
.end method
