.class public final Lcom/android/launcher3/CellLayout$CellInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfo"
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field cellX:I

.field cellY:I

.field container:J

.field screenId:J

.field spanX:I

.field spanY:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 3005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2998
    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    .line 2999
    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    .line 3006
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3007
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    .line 3008
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    .line 3009
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 3010
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 3011
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    .line 3012
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    .line 3013
    return-void
.end method

.method public static ajc$get$cell(Lcom/android/launcher3/CellLayout$CellInfo;)Landroid/view/View;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    return-object v0
.end method

.method public static ajc$get$container(Lcom/android/launcher3/CellLayout$CellInfo;)J
    .registers 3

    .prologue
    .line 1
    iget-wide v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    return-wide v0
.end method

.method public static ajc$set$cell(Lcom/android/launcher3/CellLayout$CellInfo;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    return-void
.end method

.method public static ajc$set$container(Lcom/android/launcher3/CellLayout$CellInfo;J)V
    .registers 4

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    return-void
.end method


# virtual methods
.method public getItemInfo()Lcom/android/launcher3/ItemInfo;
    .registers 5

    .prologue
    .line 3022
    new-instance v0, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 3023
    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 3024
    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 3025
    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3026
    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3027
    iget-wide v2, p0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    iput-wide v2, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 3028
    iget-wide v2, p0, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    iput-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 3029
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3017
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Cell[view="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v0, :cond_34

    const-string v0, "null"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3018
    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3017
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_d
.end method
