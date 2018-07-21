.class public Lcom/android/launcher3/LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "LogDecelerateInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field mBase:I

.field mDrift:I

.field final mLogScale:F


# direct methods
.method public constructor <init>(II)V
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mBase:I

    .line 13
    iput p2, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mDrift:I

    .line 15
    iget v0, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mBase:I

    iget v1, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mDrift:I

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/LogDecelerateInterpolator;->computeLog(FII)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mLogScale:F

    .line 16
    return-void
.end method

.method static computeLog(FII)F
    .registers 7

    .prologue
    .line 19
    int-to-double v0, p1

    neg-float v2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    .prologue
    .line 24
    iget v0, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mBase:I

    iget v1, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mDrift:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/LogDecelerateInterpolator;->computeLog(FII)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mLogScale:F

    mul-float/2addr v0, v1

    return v0
.end method
