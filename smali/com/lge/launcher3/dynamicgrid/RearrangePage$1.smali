.class Lcom/lge/launcher3/dynamicgrid/RearrangePage$1;
.super Ljava/lang/Object;
.source "RearrangePage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/dynamicgrid/RearrangePage;
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
        "Lcom/android/launcher3/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/dynamicgrid/RearrangePage;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/dynamicgrid/RearrangePage;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage$1;->this$0:Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareCellX(JJJJ)I
    .registers 10

    .prologue
    .line 64
    cmp-long v0, p1, p3

    if-lez v0, :cond_6

    .line 65
    const/4 v0, -0x1

    .line 69
    :goto_5
    return v0

    .line 66
    :cond_6
    cmp-long v0, p1, p3

    if-gez v0, :cond_c

    .line 67
    const/4 v0, 0x1

    goto :goto_5

    .line 69
    :cond_c
    invoke-direct {p0, p5, p6, p7, p8}, Lcom/lge/launcher3/dynamicgrid/RearrangePage$1;->compareID(JJ)I

    move-result v0

    goto :goto_5
.end method

.method private compareID(JJ)I
    .registers 6

    .prologue
    .line 74
    cmp-long v0, p1, p3

    if-lez v0, :cond_6

    .line 75
    const/4 v0, -0x1

    .line 79
    :goto_5
    return v0

    .line 76
    :cond_6
    cmp-long v0, p1, p3

    if-gez v0, :cond_c

    .line 77
    const/4 v0, 0x1

    goto :goto_5

    .line 79
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public final compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I
    .registers 16

    .prologue
    .line 42
    if-eqz p1, :cond_4

    if-nez p2, :cond_24

    .line 43
    :cond_4
    const-string v0, "RearrangePage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Comparing itemInfo is null : firstItemInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    const-string v2, ", secondItemInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 59
    :goto_23
    return v0

    .line 47
    :cond_24
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    int-to-long v2, v0

    .line 48
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    int-to-long v4, v0

    .line 49
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    int-to-long v0, v0

    .line 50
    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    int-to-long v10, v6

    .line 51
    iget-wide v6, p1, Lcom/android/launcher3/ItemInfo;->id:J

    .line 52
    iget-wide v8, p2, Lcom/android/launcher3/ItemInfo;->id:J

    .line 54
    cmp-long v12, v0, v10

    if-lez v12, :cond_3a

    .line 55
    const/4 v0, -0x1

    goto :goto_23

    .line 56
    :cond_3a
    cmp-long v0, v0, v10

    if-gez v0, :cond_40

    .line 57
    const/4 v0, 0x1

    goto :goto_23

    :cond_40
    move-object v1, p0

    .line 59
    invoke-direct/range {v1 .. v9}, Lcom/lge/launcher3/dynamicgrid/RearrangePage$1;->compareCellX(JJJJ)I

    move-result v0

    goto :goto_23
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/dynamicgrid/RearrangePage$1;->compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method
