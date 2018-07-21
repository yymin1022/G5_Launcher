.class Lcom/android/launcher3/InverseZInterpolator;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private zInterpolator:Lcom/android/launcher3/ZInterpolator;


# direct methods
.method public constructor <init>(F)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/android/launcher3/ZInterpolator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/InverseZInterpolator;->zInterpolator:Lcom/android/launcher3/ZInterpolator;

    .line 108
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/InverseZInterpolator;->zInterpolator:Lcom/android/launcher3/ZInterpolator;

    sub-float v1, v2, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ZInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method
