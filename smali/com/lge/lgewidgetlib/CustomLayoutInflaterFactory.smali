.class Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "CustomLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomLayoutInflaterFactory"

.field static mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mFilter:Landroid/view/LayoutInflater$Filter;

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    new-instance v0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory$1;

    invoke-direct {v0}, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory$1;-><init>()V

    sput-object v0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 22
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->mConstructorSignature:[Ljava/lang/Class;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    sput-object v0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->sConstructorMap:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->mConstructorArgs:[Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static clearConstructorMap()V
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    return-void
.end method

.method private createCustomView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    sget-object v0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 70
    if-nez v0, :cond_60

    .line 72
    :try_start_b
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 73
    if-eqz p2, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_22
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    const-class v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    sget-object v2, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v2, :cond_3d

    if-eqz v0, :cond_3d

    .line 76
    sget-object v2, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v2, v0}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v2

    .line 77
    if-nez v2, :cond_3d

    .line 78
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 81
    :cond_3d
    sget-object v2, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 82
    sget-object v2, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "CustomLayoutInflaterFactory"

    const-string v3, "new Constructor added to map"

    invoke-static {v2, v3}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_4f
    iget-object v2, p0, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->mConstructorArgs:[Ljava/lang/Object;

    .line 89
    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 90
    const/4 v3, 0x1

    aput-object p4, v2, v3

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 105
    :goto_5d
    return-object v0

    :cond_5e
    move-object v0, p1

    .line 73
    goto :goto_22

    .line 85
    :cond_60
    const-string v2, "CustomLayoutInflaterFactory"

    const-string v3, "Constructor founded from map"

    invoke-static {v2, v3}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_67} :catch_68
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_67} :catch_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_67} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_67} :catch_71

    goto :goto_4f

    .line 96
    :catch_68
    move-exception v0

    move-object v0, v1

    .line 97
    goto :goto_5d

    .line 98
    :catch_6b
    move-exception v0

    move-object v0, v1

    .line 100
    goto :goto_5d

    .line 101
    :catch_6e
    move-exception v0

    move-object v0, v1

    .line 103
    goto :goto_5d

    .line 104
    :catch_71
    move-exception v0

    move-object v0, v1

    .line 105
    goto :goto_5d
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    .line 113
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    if-eqz p2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 50
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->createCustomView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_5
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_5} :catch_9

    move-result-object v0

    .line 56
    :goto_6
    return-object v0

    .line 51
    :catch_7
    move-exception v1

    goto :goto_6

    .line 54
    :catch_9
    move-exception v1

    goto :goto_6
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->createCustomView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_5
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_5} :catch_9

    move-result-object v0

    .line 42
    :goto_6
    return-object v0

    .line 35
    :catch_7
    move-exception v1

    goto :goto_6

    .line 39
    :catch_9
    move-exception v1

    goto :goto_6
.end method
