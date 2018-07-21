.class public Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;
.super Ljava/lang/Object;
.source "WidgetBlurAppList.java"


# static fields
.field private static sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;


# instance fields
.field private mAppList:Ljava/util/ArrayList;
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
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->mAppList:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->makeAppList(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;
    .registers 3

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 28
    :cond_4
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;

    if-nez v0, :cond_13

    .line 29
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;

    .line 31
    :cond_13
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;

    goto :goto_3
.end method

.method private makeAppList(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 49
    if-nez v1, :cond_13

    .line 58
    :cond_12
    return-void

    .line 53
    :cond_13
    array-length v2, v1

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    .line 54
    iget-object v4, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 55
    iget-object v4, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 72
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iput-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->mAppList:Ljava/util/ArrayList;

    .line 76
    :cond_c
    sput-object v1, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;->sInstance:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAppList;

    .line 77
    return-void
.end method
