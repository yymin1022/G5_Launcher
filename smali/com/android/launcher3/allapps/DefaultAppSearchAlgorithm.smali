.class public Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mResultHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "[\\s|\\p{javaSpaceChar}]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .registers 4

    .prologue
    .line 43
    if-eqz p1, :cond_8

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    :cond_8
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;)V
    .registers 6

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm$1;-><init>(Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method protected getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 72
    return-object v2

    .line 67
    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->matches(Lcom/android/launcher3/AppInfo;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 69
    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method protected matches(Lcom/android/launcher3/AppInfo;[Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v2, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 78
    :goto_13
    array-length v2, p2

    if-lt v0, v2, :cond_18

    move v1, v3

    .line 92
    :cond_17
    return v1

    :cond_18
    move v2, v1

    .line 80
    :goto_19
    array-length v5, v4

    if-lt v2, v5, :cond_22

    move v2, v1

    .line 86
    :goto_1d
    if-eqz v2, :cond_17

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 81
    :cond_22
    aget-object v5, v4, v2

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move v2, v3

    .line 83
    goto :goto_1d

    .line 80
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method
