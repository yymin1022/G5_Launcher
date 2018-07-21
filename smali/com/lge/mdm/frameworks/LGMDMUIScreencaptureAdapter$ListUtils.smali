.class final Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter$ListUtils;
.super Ljava/lang/Object;
.source "LGMDMUIScreencaptureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/frameworks/LGMDMUIScreencaptureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x1

    .line 145
    if-nez p0, :cond_4

    .line 146
    return v1

    .line 149
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_b

    .line 150
    return v1

    .line 153
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
