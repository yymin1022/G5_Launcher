.class Lcom/lge/launcher3/sortappsby/SortAppsByConst$3;
.super Ljava/lang/Object;
.source "SortAppsByConst.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)I
    .registers 5

    .prologue
    .line 98
    iget v0, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenRank:I

    iget v1, p2, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenRank:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 99
    if-eqz v0, :cond_b

    .line 113
    :cond_a
    :goto_a
    return v0

    .line 103
    :cond_b
    iget v0, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    iget v1, p2, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 104
    if-nez v0, :cond_a

    .line 108
    iget v0, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    iget v1, p2, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 109
    if-nez v0, :cond_a

    .line 113
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    check-cast p2, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$3;->compare(Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)I

    move-result v0

    return v0
.end method
