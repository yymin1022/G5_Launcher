.class public Lcom/lge/launcher3/smartbulletin/util/SBExcludeProviderList;
.super Ljava/lang/Object;
.source "SBExcludeProviderList.java"


# static fields
.field private static final CLASS_NAME_TAG:Ljava/lang/String; = "class_name"

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

.method public static loadExcludeProviderListFromXml(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    const v2, 0x7f070023

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 35
    :cond_10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 36
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3e

    .line 37
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 38
    const-string v4, "provider"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 39
    new-instance v3, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;

    invoke-direct {v3}, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;-><init>()V

    .line 40
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2b
    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/smartbulletin/util/SBExcludeProviderList;->parseExcludeProvider(Lorg/xmlpull/v1/XmlPullParser;ILcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;)I

    move-result v0

    .line 43
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2b

    const-string v4, "provider"

    .line 44
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_3b} :catch_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_3b} :catch_47
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3b} :catch_4c

    move-result v4

    .line 44
    if-eqz v4, :cond_2b

    .line 47
    :cond_3e
    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    .line 56
    :goto_41
    return-object v1

    .line 48
    :catch_42
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_41

    .line 50
    :catch_47
    move-exception v0

    .line 51
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_41

    .line 52
    :catch_4c
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41
.end method

.method private static parseExcludeProvider(Lorg/xmlpull/v1/XmlPullParser;ILcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 61
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1c

    .line 62
    const-string v0, "package_name"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 63
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 64
    if-ne v0, v2, :cond_1c

    .line 65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;->mPakageName:Ljava/lang/String;

    .line 74
    :cond_1c
    :goto_1c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 75
    return v0

    .line 67
    :cond_21
    const-string v0, "class_name"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 68
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 69
    if-ne v0, v2, :cond_1c

    .line 70
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/lge/launcher3/smartbulletin/info/SBExcludeProviderInfo;->mClassName:Ljava/lang/String;

    goto :goto_1c
.end method
