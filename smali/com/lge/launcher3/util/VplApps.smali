.class public Lcom/lge/launcher3/util/VplApps;
.super Ljava/lang/Object;
.source "VplApps.java"


# static fields
.field private static sVplApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/launcher3/util/VplApps;->sVplApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/lge/launcher3/util/VplApps;->sVplApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/lge/launcher3/util/VplApps;->makeAppList(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private static makeAppList(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 21
    sget-object v0, Lcom/lge/launcher3/util/VplApps;->sVplApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/lge/launcher3/util/VplApps;->sVplApps:Ljava/util/ArrayList;

    invoke-static {p0, v2, v1}, Lcom/lge/launcher3/util/AppCrawler;->crawl(Landroid/content/Context;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 29
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 30
    if-nez v1, :cond_28

    .line 39
    :cond_27
    return-void

    .line 34
    :cond_28
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v2, :cond_27

    aget-object v3, v1, v0

    .line 35
    sget-object v4, Lcom/lge/launcher3/util/VplApps;->sVplApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 36
    sget-object v4, Lcom/lge/launcher3/util/VplApps;->sVplApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method
