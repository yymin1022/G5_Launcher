.class Lcom/android/launcher3/util/FlagOp$3;
.super Lcom/android/launcher3/util/FlagOp;
.source "FlagOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$flag:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/util/FlagOp$3;->val$flag:I

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/FlagOp;-><init>(Lcom/android/launcher3/util/FlagOp;)V

    return-void
.end method


# virtual methods
.method public apply(I)I
    .registers 3

    .prologue
    .line 28
    iget v0, p0, Lcom/android/launcher3/util/FlagOp$3;->val$flag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method
