.class Lcom/android/launcher3/PagedView$ScrollInterpolator;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollInterpolator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2097
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2100
    sub-float v0, p1, v2

    .line 2101
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method
