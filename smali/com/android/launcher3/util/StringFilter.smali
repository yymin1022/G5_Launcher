.class public abstract Lcom/android/launcher3/util/StringFilter;
.super Ljava/lang/Object;
.source "StringFilter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/StringFilter;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/launcher3/util/StringFilter;-><init>()V

    return-void
.end method

.method public static matchesAll()Lcom/android/launcher3/util/StringFilter;
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcom/android/launcher3/util/StringFilter$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/StringFilter$1;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/util/Set;)Lcom/android/launcher3/util/StringFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/launcher3/util/StringFilter;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/android/launcher3/util/StringFilter$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/StringFilter$2;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public abstract matches(Ljava/lang/String;)Z
.end method
