.class public Lcom/lge/mdm/intentfirewall/Rule;
.super Lcom/lge/mdm/intentfirewall/FilterList;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;,
        Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;,
        Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final TAG_COMPONENT_FILTER:Ljava/lang/String; = "component-filter"

.field private static final TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"


# instance fields
.field private final mComponentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/lge/mdm/intentfirewall/Rule;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule;->mComponentFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mdm/intentfirewall/Rule;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule;->mIntentFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lge/mdm/intentfirewall/FilterList;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule;->mIntentFilters:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule;->mComponentFilters:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public getComponentFilter(I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public getComponentFilterCount()I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntentFilter(I)Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    return-object v0
.end method

.method public getIntentFilterCount()I
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected writeChild(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 121
    iget-object v4, p0, Lcom/lge/mdm/intentfirewall/Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2b

    .line 122
    const-string/jumbo v4, "intent-filter"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    iget-object v4, p0, Lcom/lge/mdm/intentfirewall/Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "filter$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    .line 124
    .local v2, "filter":Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;
    invoke-virtual {v2, p1}, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_15

    .line 126
    .end local v2    # "filter":Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;
    :cond_25
    const-string/jumbo v4, "intent-filter"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    .end local v3    # "filter$iterator":Ljava/util/Iterator;
    :cond_2b
    iget-object v4, p0, Lcom/lge/mdm/intentfirewall/Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5c

    .line 130
    iget-object v4, p0, Lcom/lge/mdm/intentfirewall/Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "componentName$iterator":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 131
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v4, "component-filter"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string/jumbo v4, "name"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    const-string/jumbo v4, "component-filter"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_39

    .line 120
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "componentName$iterator":Ljava/util/Iterator;
    :cond_5c
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)Lcom/lge/mdm/intentfirewall/Filter;
    .registers 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/lge/mdm/intentfirewall/FilterList;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)Lcom/lge/mdm/intentfirewall/Filter;

    move-result-object v0

    return-object v0
.end method
