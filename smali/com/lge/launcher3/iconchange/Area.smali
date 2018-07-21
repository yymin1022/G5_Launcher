.class public Lcom/lge/launcher3/iconchange/Area;
.super Ljava/lang/Object;
.source "Area.java"


# instance fields
.field public HSpan:I

.field public Left:I

.field public Top:I

.field public VSpan:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/lge/launcher3/iconchange/Area;-><init>(IIII)V

    .line 23
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    .line 27
    iput p2, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    .line 28
    iput p3, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    .line 29
    iput p4, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 6

    .prologue
    .line 33
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lge/launcher3/iconchange/Area;-><init>(IIII)V

    .line 34
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 72
    new-instance v0, Lcom/lge/launcher3/iconchange/Area;

    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    iget v2, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    iget v4, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/iconchange/Area;-><init>(IIII)V

    return-object v0
.end method

.method public set(IIII)V
    .registers 5

    .prologue
    .line 64
    iput p1, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    .line 65
    iput p2, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    .line 66
    iput p3, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    .line 67
    iput p4, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    .line 68
    return-void
.end method

.method public setArea(Lcom/lge/launcher3/iconchange/Area;)V
    .registers 3

    .prologue
    .line 57
    iget v0, p1, Lcom/lge/launcher3/iconchange/Area;->Left:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    .line 58
    iget v0, p1, Lcom/lge/launcher3/iconchange/Area;->Top:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    .line 59
    iget v0, p1, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    .line 60
    iget v0, p1, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    .line 61
    return-void
.end method

.method public setPos(Landroid/graphics/Point;)V
    .registers 3

    .prologue
    .line 37
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    .line 38
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    .line 39
    return-void
.end method

.method public setPosWithDiff(II)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 43
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    .line 44
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    if-gez v0, :cond_19

    move v0, v1

    :goto_b
    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    .line 45
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    .line 46
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    if-gez v0, :cond_1c

    :goto_16
    iput v1, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    .line 47
    return-void

    .line 44
    :cond_19
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    goto :goto_b

    .line 46
    :cond_1c
    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    goto :goto_16
.end method

.method public setSizeWithDiff(II)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 50
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    .line 51
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    if-gez v0, :cond_19

    move v0, v1

    :goto_b
    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    .line 52
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    .line 53
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    if-gez v0, :cond_1c

    :goto_16
    iput v1, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    .line 54
    return-void

    .line 51
    :cond_19
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    goto :goto_b

    .line 53
    :cond_1c
    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Area X: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", H: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", V: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vacant([[Z)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 81
    if-nez p1, :cond_5

    move v0, v2

    .line 101
    :goto_4
    return v0

    .line 85
    :cond_5
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    if-ltz v0, :cond_13

    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    array-length v1, p1

    if-lt v0, v1, :cond_15

    :cond_13
    move v0, v2

    .line 86
    goto :goto_4

    .line 89
    :cond_15
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    if-ltz v0, :cond_25

    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v1, p1, v2

    array-length v1, v1

    if-lt v0, v1, :cond_27

    :cond_25
    move v0, v2

    .line 90
    goto :goto_4

    .line 93
    :cond_27
    iget v0, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    :goto_29
    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->Left:I

    iget v3, p0, Lcom/lge/launcher3/iconchange/Area;->HSpan:I

    add-int/2addr v1, v3

    if-lt v0, v1, :cond_32

    .line 101
    const/4 v0, 0x1

    goto :goto_4

    .line 94
    :cond_32
    iget v1, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    :goto_34
    iget v3, p0, Lcom/lge/launcher3/iconchange/Area;->Top:I

    iget v4, p0, Lcom/lge/launcher3/iconchange/Area;->VSpan:I

    add-int/2addr v3, v4

    if-lt v1, v3, :cond_3e

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 95
    :cond_3e
    aget-object v3, p1, v0

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_46

    move v0, v2

    .line 96
    goto :goto_4

    .line 94
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method
