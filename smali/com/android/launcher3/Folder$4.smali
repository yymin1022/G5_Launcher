.class Lcom/android/launcher3/Folder$4;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Folder;
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
        "Lcom/android/launcher3/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I
    .registers 5

    .prologue
    .line 1485
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    if-eq v0, v1, :cond_c

    .line 1486
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    sub-int/2addr v0, v1

    .line 1490
    :goto_b
    return v0

    .line 1487
    :cond_c
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_18

    .line 1488
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    sub-int/2addr v0, v1

    goto :goto_b

    .line 1490
    :cond_18
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    sub-int/2addr v0, v1

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Folder$4;->compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method
