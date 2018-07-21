.class public Lcom/lge/launcher3/help/HelpItemInfo;
.super Ljava/lang/Object;
.source "HelpItemInfo.java"


# instance fields
.field public mHelpItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/help/HelpItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/help/HelpItemInfo;->setupHelpItem(Ljava/lang/String;Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private setupHelpItem(Ljava/lang/String;Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 23
    const-string v1, "VZW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 24
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/launcher3/help/HelpItem;

    const v3, 0x7f0f0153

    .line 25
    const v4, 0x7f02008a

    .line 26
    const v5, 0x7f0f0154

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 24
    invoke-virtual {v1, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 28
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/launcher3/help/HelpItem;

    const v3, 0x7f0f0155

    .line 29
    const v4, 0x7f020089

    .line 30
    const v5, 0x7f0f0156

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 28
    invoke-virtual {v1, v9, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/launcher3/help/HelpItem;

    const v3, 0x7f0f0157

    .line 33
    const v4, 0x7f020088

    .line 34
    const v5, 0x7f0f0158

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 32
    invoke-virtual {v1, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/launcher3/help/HelpItem;

    const v3, 0x7f0f015b

    .line 37
    const v4, 0x7f02008b

    .line 38
    const v5, 0x7f0f015c

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 36
    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    const/4 v2, 0x4

    new-instance v3, Lcom/lge/launcher3/help/HelpItem;

    const v4, 0x7f0f015d

    .line 41
    const v5, 0x7f020087

    .line 42
    if-eqz v0, :cond_7b

    const v0, 0x7f0f015e

    .line 44
    :goto_74
    invoke-direct {v3, v4, v5, v0, v6}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    :cond_7a
    :goto_7a
    return-void

    .line 43
    :cond_7b
    const v0, 0x7f0f015f

    goto :goto_74

    .line 46
    :cond_7f
    const-string v1, "ATT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 47
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/launcher3/help/HelpItem;

    const v3, 0x7f0f0122

    .line 48
    const v4, 0x7f020089

    .line 49
    if-eqz v0, :cond_db

    const v0, 0x7f0f0160

    .line 51
    :goto_96
    invoke-direct {v2, v3, v4, v0, v6}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 47
    invoke-virtual {v1, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/launcher3/help/HelpItem;

    const v2, 0x7f0f0127

    .line 54
    const v3, 0x7f020085

    .line 55
    const v4, 0x7f0f0128

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 53
    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/launcher3/help/HelpItem;

    const v2, 0x7f0f0129

    .line 58
    const v3, 0x7f020086

    .line 59
    const v4, 0x7f0f012a

    .line 60
    new-array v5, v7, [I

    fill-array-data v5, :array_e0

    .line 63
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 57
    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    new-instance v1, Lcom/lge/launcher3/help/HelpItem;

    const v2, 0x7f0f0157

    .line 66
    const v3, 0x7f020088

    .line 67
    const v4, 0x7f0f0158

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/lge/launcher3/help/HelpItem;-><init>(III[I)V

    .line 65
    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7a

    .line 50
    :cond_db
    const v0, 0x7f0f0161

    goto :goto_96

    .line 60
    nop

    :array_e0
    .array-data 4
        0x7f0f012b
        0x7f0f012c
        0x7f0f012d
    .end array-data
.end method


# virtual methods
.method public createItem(I)Lcom/lge/launcher3/help/HelpItem;
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/help/HelpItem;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpItemInfo;->mHelpItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
