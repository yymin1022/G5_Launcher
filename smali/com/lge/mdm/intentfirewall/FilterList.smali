.class abstract Lcom/lge/mdm/intentfirewall/FilterList;
.super Ljava/lang/Object;
.source "FilterList.java"

# interfaces
.implements Lcom/lge/mdm/intentfirewall/Filter;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract writeChild(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)Lcom/lge/mdm/intentfirewall/Filter;
    .registers 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/lge/mdm/intentfirewall/FilterList;->writeChild(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 11
    return-object p0
.end method
