.class final Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;
.super Ljava/lang/Object;
.source "SignatureImpl.java"

# interfaces
.implements Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aspectj/runtime/reflect/SignatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheImpl"
.end annotation


# instance fields
.field private toStringCacheRef:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->makeCache()[Ljava/lang/String;

    .line 214
    return-void
.end method

.method private array()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->toStringCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private makeCache()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 237
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 238
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->toStringCacheRef:Ljava/lang/ref/SoftReference;

    .line 239
    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 217
    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->array()[Ljava/lang/String;

    move-result-object v0

    .line 218
    if-nez v0, :cond_8

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_7
    return-object v0

    :cond_8
    aget-object v0, v0, p1

    goto :goto_7
.end method

.method public set(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 225
    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->array()[Ljava/lang/String;

    move-result-object v0

    .line 226
    if-nez v0, :cond_a

    .line 227
    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->makeCache()[Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_a
    aput-object p2, v0, p1

    .line 230
    return-void
.end method
