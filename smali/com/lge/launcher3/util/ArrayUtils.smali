.class public Lcom/lge/launcher3/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertIntToLongArray([I)[J
    .registers 2

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/ArrayUtils;->convertIntToLongArray([I[J)[J

    move-result-object v0

    return-object v0
.end method

.method public static convertIntToLongArray([I[J)[J
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 22
    if-eqz p0, :cond_6

    array-length v1, p0

    if-gtz v1, :cond_8

    :cond_6
    move-object p1, v0

    .line 34
    :cond_7
    :goto_7
    return-object p1

    .line 26
    :cond_8
    if-nez p1, :cond_d

    array-length v1, p0

    new-array p1, v1, [J

    .line 27
    :cond_d
    array-length v1, p1

    array-length v2, p0

    if-eq v1, v2, :cond_13

    move-object p1, v0

    .line 28
    goto :goto_7

    .line 31
    :cond_13
    const/4 v0, 0x0

    :goto_14
    array-length v1, p0

    if-ge v0, v1, :cond_7

    .line 32
    aget v1, p0, v0

    int-to-long v2, v1

    aput-wide v2, p1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
