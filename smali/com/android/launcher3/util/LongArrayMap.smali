.class public Lcom/android/launcher3/util/LongArrayMap;
.super Landroid/util/LongSparseArray;
.source "LongArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/LongArrayMap$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray",
        "<TE;>;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/util/LongSparseArray;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/launcher3/util/LongArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method public containsKey(J)Z
    .registers 4

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;-><init>(Lcom/android/launcher3/util/LongArrayMap;)V

    return-object v0
.end method
