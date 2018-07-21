.class Lcom/lge/mdm/controller/LGMDMCertificateController$MyMap;
.super Ljava/util/LinkedHashMap;
.source "LGMDMCertificateController.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMCertificateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "[B>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMCertificateController$MyMap;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMCertificateController$MyMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/lge/mdm/controller/LGMDMCertificateController$MyMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
