.class public Lorg/aspectj/lang/reflect/AjTypeSystem;
.super Ljava/lang/Object;
.source "AjTypeSystem.java"


# static fields
.field private static ajTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/aspectj/lang/reflect/AjType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/aspectj/lang/reflect/AjTypeSystem;->ajTypes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/aspectj/lang/reflect/AjType",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lorg/aspectj/lang/reflect/AjTypeSystem;->ajTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 40
    if-eqz v0, :cond_23

    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/reflect/AjType;

    .line 42
    if-eqz v0, :cond_13

    .line 53
    :goto_12
    return-object v0

    .line 45
    :cond_13
    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    .line 46
    sget-object v1, Lorg/aspectj/lang/reflect/AjTypeSystem;->ajTypes:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 51
    :cond_23
    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    .line 52
    sget-object v1, Lorg/aspectj/lang/reflect/AjTypeSystem;->ajTypes:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method
