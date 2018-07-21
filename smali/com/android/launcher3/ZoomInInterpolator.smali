.class Lcom/android/launcher3/ZoomInInterpolator;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final inverseZInterpolator:Lcom/android/launcher3/InverseZInterpolator;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/android/launcher3/InverseZInterpolator;

    const v1, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1}, Lcom/android/launcher3/InverseZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/ZoomInInterpolator;->inverseZInterpolator:Lcom/android/launcher3/InverseZInterpolator;

    .line 119
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    .line 117
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher3/ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/launcher3/ZoomInInterpolator;->inverseZInterpolator:Lcom/android/launcher3/InverseZInterpolator;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/InverseZInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
