.class Lcom/android/launcher3/compat/BaseAlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndexCompat.java"


# static fields
.field private static final BUCKETS:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

.field private static final UNKNOWN_BUCKET_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/launcher3/compat/BaseAlphabeticIndex;->UNKNOWN_BUCKET_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBucketIndex(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    sget v0, Lcom/android/launcher3/compat/BaseAlphabeticIndex;->UNKNOWN_BUCKET_INDEX:I

    .line 39
    :cond_8
    :goto_8
    return v0

    .line 35
    :cond_9
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 36
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 39
    sget v0, Lcom/android/launcher3/compat/BaseAlphabeticIndex;->UNKNOWN_BUCKET_INDEX:I

    goto :goto_8
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 46
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMaxLabelCount(I)V
    .registers 2

    .prologue
    .line 26
    return-void
.end method
