.class public Lcom/lge/launcher3/homesettings/HomeSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "HomeSearchIndexablesProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsSearch"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 19
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/lge/provider/LGSearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 25
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/lge/provider/LGSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/lge/launcher3/homesettings/SearchIndexableItem;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomeSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/SearchIndexableItem;->values()Ljava/util/ArrayList;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    .line 48
    return-object v4

    .line 28
    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;

    .line 29
    const-string v1, "SettingsSearch"

    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/16 v1, 0x14

    new-array v6, v1, [Ljava/lang/Object;

    .line 31
    const/16 v1, 0xc

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->key:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 32
    const/4 v1, 0x7

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->className:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 33
    iget-object v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->title:Ljava/lang/String;

    aput-object v1, v6, v2

    .line 34
    const/4 v1, 0x6

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 35
    const/4 v1, 0x2

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 36
    const/4 v1, 0x3

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 37
    const/16 v1, 0x9

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 38
    const/16 v1, 0xb

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->intentClass:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 39
    const/16 v1, 0xa

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->intentPackage:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 40
    const/16 v7, 0xe

    iget-boolean v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->enable:Z

    if-eqz v1, :cond_a2

    move v1, v2

    :goto_6b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    .line 41
    const/16 v1, 0xf

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->preferenceType:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 42
    const/16 v1, 0x10

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->settingsDbTable:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 43
    const/16 v1, 0x11

    iget-object v7, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->settingsDbField:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 44
    const/16 v7, 0x12

    iget-boolean v1, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->visible:Z

    if-eqz v1, :cond_a4

    move v1, v2

    :goto_8a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    .line 45
    const/16 v1, 0x13

    iget-boolean v0, v0, Lcom/lge/launcher3/homesettings/SearchIndexableRaw;->checkValue:Z

    if-eqz v0, :cond_a6

    move v0, v2

    :goto_97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    .line 46
    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_a2
    move v1, v3

    .line 40
    goto :goto_6b

    :cond_a4
    move v1, v3

    .line 44
    goto :goto_8a

    :cond_a6
    move v0, v3

    .line 45
    goto :goto_97
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 53
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/lge/provider/LGSearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 54
    return-object v0
.end method
