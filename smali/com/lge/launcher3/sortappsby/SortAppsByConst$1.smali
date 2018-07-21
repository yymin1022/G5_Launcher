.class Lcom/lge/launcher3/sortappsby/SortAppsByConst$1;
.super Ljava/lang/Object;
.source "SortAppsByConst.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByConst;
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
        "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$1;->mCollator:Ljava/text/Collator;

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)I
    .registers 6

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p2}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$1;->mCollator:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    check-cast p2, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$1;->compare(Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)I

    move-result v0

    return v0
.end method
