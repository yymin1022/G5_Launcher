.class Lcom/android/launcher3/ZInterpolator;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lcom/android/launcher3/ZInterpolator;->focalLength:F

    .line 93
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 96
    iget v0, p0, Lcom/android/launcher3/ZInterpolator;->focalLength:F

    iget v1, p0, Lcom/android/launcher3/ZInterpolator;->focalLength:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    .line 97
    iget v1, p0, Lcom/android/launcher3/ZInterpolator;->focalLength:F

    iget v2, p0, Lcom/android/launcher3/ZInterpolator;->focalLength:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    .line 96
    div-float/2addr v0, v1

    return v0
.end method
