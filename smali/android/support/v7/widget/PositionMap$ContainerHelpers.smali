.class Landroid/support/v7/widget/PositionMap$ContainerHelpers;
.super Ljava/lang/Object;
.source "PositionMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/PositionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerHelpers"
.end annotation


# static fields
.field static final EMPTY_BOOLEANS:[Z

.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 434
    new-array v0, v1, [Z

    sput-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_BOOLEANS:[Z

    .line 435
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_INTS:[I

    .line 436
    new-array v0, v1, [J

    sput-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_LONGS:[J

    .line 437
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .registers 7

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 442
    add-int/lit8 v0, p1, -0x1

    .line 444
    :goto_3
    if-gt v1, v0, :cond_17

    .line 445
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 446
    aget v3, p0, v2

    .line 448
    if-ge v3, p2, :cond_10

    .line 449
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 450
    :cond_10
    if-le v3, p2, :cond_15

    .line 451
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    :cond_15
    move v0, v2

    .line 456
    :goto_16
    return v0

    :cond_17
    xor-int/lit8 v0, v1, -0x1

    goto :goto_16
.end method
