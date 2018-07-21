.class public Lcom/android/launcher3/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isFullscreen:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 2925
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2882
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 2893
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2926
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2927
    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2928
    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2929
    iput p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2930
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2905
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2882
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 2893
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2906
    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2907
    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2908
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2911
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2882
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 2893
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2912
    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2913
    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2914
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2917
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2882
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 2893
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2918
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2919
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2920
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2921
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2922
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 2970
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 2962
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 2978
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 2986
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2

    .prologue
    .line 2966
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 2967
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .prologue
    .line 2958
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 2959
    return-void
.end method

.method public setX(I)V
    .registers 2

    .prologue
    .line 2974
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 2975
    return-void
.end method

.method public setY(I)V
    .registers 2

    .prologue
    .line 2982
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 2983
    return-void
.end method

.method public setup(IIIIZI)V
    .registers 12

    .prologue
    .line 2934
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v0, :cond_47

    .line 2935
    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2936
    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2937
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2938
    :goto_e
    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_4b

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2940
    :goto_14
    if-eqz p5, :cond_1b

    .line 2941
    sub-int v0, p6, v0

    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    sub-int/2addr v0, v4

    .line 2944
    :cond_1b
    mul-int v4, v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p3

    add-int/2addr v2, v4

    .line 2945
    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    .line 2944
    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 2946
    mul-int v2, v3, p2

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p4

    add-int/2addr v2, v3

    .line 2947
    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    .line 2946
    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 2948
    add-int v2, p1, p3

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 2949
    add-int v0, p2, p4

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 2951
    :cond_47
    return-void

    .line 2937
    :cond_48
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    goto :goto_e

    .line 2938
    :cond_4b
    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2954
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
