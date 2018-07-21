.class Lcom/android/launcher3/CellLayout$CellAndSpan;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellAndSpan"
.end annotation


# instance fields
.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 2559
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2560
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout;IIII)V
    .registers 6

    .prologue
    .line 2569
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2570
    iput p2, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    .line 2571
    iput p3, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    .line 2572
    iput p4, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    .line 2573
    iput p5, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    .line 2574
    return-void
.end method


# virtual methods
.method public copy(Lcom/android/launcher3/CellLayout$CellAndSpan;)V
    .registers 3

    .prologue
    .line 2563
    iget v0, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    iput v0, p1, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    .line 2564
    iget v0, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    iput v0, p1, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    .line 2565
    iget v0, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    iput v0, p1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    .line 2566
    iget v0, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    iput v0, p1, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    .line 2567
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$CellAndSpan;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
