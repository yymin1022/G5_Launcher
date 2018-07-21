.class public Lcom/lge/mdm/admin/LGISGeneralParser;
.super Lcom/lge/mdm/admin/LGMDMXml;
.source "LGISGeneralParser.java"


# static fields
.field private static instance:Lcom/lge/mdm/admin/LGISGeneralParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/admin/LGISGeneralParser;->instance:Lcom/lge/mdm/admin/LGISGeneralParser;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lge/mdm/admin/LGMDMXml;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/admin/LGISGeneralParser;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/lge/mdm/admin/LGISGeneralParser;->instance:Lcom/lge/mdm/admin/LGISGeneralParser;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lcom/lge/mdm/admin/LGISGeneralParser;

    invoke-direct {v0}, Lcom/lge/mdm/admin/LGISGeneralParser;-><init>()V

    sput-object v0, Lcom/lge/mdm/admin/LGISGeneralParser;->instance:Lcom/lge/mdm/admin/LGISGeneralParser;

    .line 23
    :cond_b
    sget-object v0, Lcom/lge/mdm/admin/LGISGeneralParser;->instance:Lcom/lge/mdm/admin/LGISGeneralParser;

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

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 42
    .local v0, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3e

    .line 43
    if-ne v2, v4, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3e

    .line 44
    :cond_14
    if-eq v2, v4, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v3, "policies"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 50
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 55
    :cond_2e
    const-string/jumbo v3, "allow-useis"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    invoke-virtual {p0, p1, v1}, Lcom/lge/mdm/admin/LGISGeneralParser;->readIntegerValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mISEnabled:I

    goto :goto_5

    .line 38
    .end local v1    # "tag":Ljava/lang/String;
    :cond_3e
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

    .line 28
    const-string/jumbo v0, "policies"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    invoke-virtual {p2}, Lcom/lge/mdm/admin/LGMDMadminlist;->getDeviceAdminInfo()Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/admin/LGMDMDeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 30
    const-string/jumbo v0, "policies"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    iget v0, p2, Lcom/lge/mdm/admin/LGMDMadminlist;->mISEnabled:I

    const-string/jumbo v1, "allow-useis"

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/mdm/admin/LGISGeneralParser;->writeIntegerValue(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 27
    return-void
.end method
