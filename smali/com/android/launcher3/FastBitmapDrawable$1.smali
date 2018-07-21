.class Lcom/android/launcher3/FastBitmapDrawable$1;
.super Ljava/lang/Object;
.source "FastBitmapDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3d4ccccd    # 0.05f

    .line 65
    cmpg-float v1, p1, v2

    if-gez v1, :cond_c

    .line 66
    div-float v0, p1, v2

    .line 70
    :cond_b
    :goto_b
    return v0

    .line 67
    :cond_c
    const v1, 0x3e99999a    # 0.3f

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_b

    .line 70
    sub-float/2addr v0, p1

    const v1, 0x3f333333    # 0.7f

    div-float/2addr v0, v1

    goto :goto_b
.end method
