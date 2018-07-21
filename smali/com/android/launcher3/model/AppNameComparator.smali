.class public Lcom/android/launcher3/model/AppNameComparator;
.super Ljava/lang/Object;
.source "AppNameComparator.java"


# instance fields
.field private final mAppInfoComparator:Lcom/android/launcher3/model/AbstractUserComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/model/AbstractUserComparator",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollator:Ljava/text/Collator;

.field private final mSectionNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/AppNameComparator;->mCollator:Ljava/text/Collator;

    .line 39
    new-instance v0, Lcom/android/launcher3/model/AppNameComparator$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/AppNameComparator$1;-><init>(Lcom/android/launcher3/model/AppNameComparator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/model/AppNameComparator;->mAppInfoComparator:Lcom/android/launcher3/model/AbstractUserComparator;

    .line 59
    new-instance v0, Lcom/android/launcher3/model/AppNameComparator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/AppNameComparator$2;-><init>(Lcom/android/launcher3/model/AppNameComparator;)V

    iput-object v0, p0, Lcom/android/launcher3/model/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    .line 65
    return-void
.end method


# virtual methods
.method compareTitles(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    .line 90
    :goto_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    .line 91
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_24

    move v2, v1

    .line 92
    :cond_24
    if-eqz v0, :cond_2c

    if-nez v2, :cond_2c

    .line 93
    const/4 v1, -0x1

    .line 99
    :cond_29
    :goto_29
    return v1

    :cond_2a
    move v0, v2

    .line 88
    goto :goto_13

    .line 94
    :cond_2c
    if-nez v0, :cond_30

    if-nez v2, :cond_29

    .line 99
    :cond_30
    iget-object v0, p0, Lcom/android/launcher3/model/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_29
.end method

.method public getAppInfoComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/model/AppNameComparator;->mAppInfoComparator:Lcom/android/launcher3/model/AbstractUserComparator;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AbstractUserComparator;->clearUserCache()V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/model/AppNameComparator;->mAppInfoComparator:Lcom/android/launcher3/model/AbstractUserComparator;

    return-object v0
.end method

.method public getSectionNameComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher3/model/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    return-object v0
.end method
