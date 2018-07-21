.class public Lcom/lge/mdm/intentfirewall/Rules;
.super Ljava/lang/Object;
.source "Rules.java"

# interfaces
.implements Lcom/lge/mdm/intentfirewall/Filter;


# static fields
.field private static final ATTR_BLOCK:Ljava/lang/String; = "block"

.field private static final ATTR_LOG:Ljava/lang/String; = "log"


# instance fields
.field private final LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/intentfirewall/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBlocked:Z

.field private mIsLogging:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/Rules;->LIST:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lcom/lge/mdm/intentfirewall/Rules;->tag:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public add(Lcom/lge/mdm/intentfirewall/Rule;)V
    .registers 3
    .param p1, "r"    # Lcom/lge/mdm/intentfirewall/Rule;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rules;->LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public setBlocked(Z)V
    .registers 3
    .param p1, "isBlock"    # Z

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lge/mdm/intentfirewall/Rules;->mIsBlocked:Z

    if-nez v0, :cond_7

    .end local p1    # "isBlock":Z
    :goto_4
    iput-boolean p1, p0, Lcom/lge/mdm/intentfirewall/Rules;->mIsBlocked:Z

    .line 47
    return-void

    .line 48
    .restart local p1    # "isBlock":Z
    :cond_7
    const/4 p1, 0x1

    goto :goto_4
.end method

.method public setLogging(Z)V
    .registers 3
    .param p1, "log"    # Z

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lge/mdm/intentfirewall/Rules;->mIsLogging:Z

    if-nez v0, :cond_7

    .end local p1    # "log":Z
    :goto_4
    iput-boolean p1, p0, Lcom/lge/mdm/intentfirewall/Rules;->mIsLogging:Z

    .line 43
    return-void

    .line 44
    .restart local p1    # "log":Z
    :cond_7
    const/4 p1, 0x1

    goto :goto_4
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)Lcom/lge/mdm/intentfirewall/Filter;
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v2, p0, Lcom/lge/mdm/intentfirewall/Rules;->LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_b

    .line 29
    return-object p0

    .line 32
    :cond_b
    iget-object v2, p0, Lcom/lge/mdm/intentfirewall/Rules;->tag:Ljava/lang/String;

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    const-string/jumbo v2, "block"

    iget-boolean v3, p0, Lcom/lge/mdm/intentfirewall/Rules;->mIsBlocked:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    const-string/jumbo v2, "log"

    iget-boolean v3, p0, Lcom/lge/mdm/intentfirewall/Rules;->mIsLogging:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    iget-object v2, p0, Lcom/lge/mdm/intentfirewall/Rules;->LIST:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/intentfirewall/Rule;

    .line 36
    .local v0, "r":Lcom/lge/mdm/intentfirewall/Rule;
    invoke-virtual {v0, p1}, Lcom/lge/mdm/intentfirewall/Rule;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)Lcom/lge/mdm/intentfirewall/Filter;

    goto :goto_2e

    .line 39
    .end local v0    # "r":Lcom/lge/mdm/intentfirewall/Rule;
    :cond_3e
    iget-object v2, p0, Lcom/lge/mdm/intentfirewall/Rules;->tag:Ljava/lang/String;

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    return-object p0
.end method
