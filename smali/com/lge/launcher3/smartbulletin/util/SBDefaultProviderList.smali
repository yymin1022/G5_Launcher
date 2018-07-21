.class public Lcom/lge/launcher3/smartbulletin/util/SBDefaultProviderList;
.super Ljava/lang/Object;
.source "SBDefaultProviderList.java"


# static fields
.field private static final CLASS_NAME_TAG:Ljava/lang/String; = "class_name"

.field private static final ENABLE_TAG:Ljava/lang/String; = "enable"

.field private static final PACKAGE_NAME_TAG:Ljava/lang/String; = "package_name"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProviderListFromXml(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    const v2, 0x7f070022

    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 36
    :cond_10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 37
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3e

    .line 38
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 39
    const-string v4, "provider"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 40
    new-instance v3, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;

    invoke-direct {v3}, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;-><init>()V

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2b
    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/smartbulletin/util/SBDefaultProviderList;->parseProvider(Lorg/xmlpull/v1/XmlPullParser;ILcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;)I

    move-result v0

    .line 44
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2b

    const-string v4, "provider"

    .line 45
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_3b} :catch_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_3b} :catch_47
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3b} :catch_4c

    move-result v4

    .line 45
    if-eqz v4, :cond_2b

    .line 48
    :cond_3e
    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    .line 57
    :goto_41
    return-object v1

    .line 49
    :catch_42
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_41

    .line 51
    :catch_47
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_41

    .line 53
    :catch_4c
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41
.end method

.method private static parseProvider(Lorg/xmlpull/v1/XmlPullParser;ILcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 62
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1c

    .line 63
    const-string v0, "package_name"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 64
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 65
    if-ne v0, v2, :cond_1c

    .line 66
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;->mPakageName:Ljava/lang/String;

    .line 85
    :cond_1c
    :goto_1c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 86
    return v0

    .line 68
    :cond_21
    const-string v0, "class_name"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 69
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 70
    if-ne v0, v2, :cond_1c

    .line 71
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;->mClassName:Ljava/lang/String;

    goto :goto_1c

    .line 73
    :cond_3a
    const-string v0, "enable"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 74
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 75
    if-ne v0, v2, :cond_1c

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;->mEnable:Z

    goto :goto_1c

    .line 80
    :cond_5c
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/lge/launcher3/smartbulletin/info/SBDefaultProviderInfo;->mEnable:Z

    goto :goto_1c
.end method
