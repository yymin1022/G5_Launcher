.class public Lcom/android/launcher3/util/RevealOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RevealOutlineProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentRadius:I

.field private final mOval:Landroid/graphics/Rect;

.field private mRadius0:F

.field private mRadius1:F


# direct methods
.method public constructor <init>(IIFF)V
    .registers 6

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCenterX:I

    .line 29
    iput p2, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCenterY:I

    .line 30
    iput p3, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mRadius0:F

    .line 31
    iput p4, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mRadius1:F

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    .line 34
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCurrentRadius:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 48
    return-void
.end method

.method public setProgress(F)V
    .registers 5

    .prologue
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mRadius0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mRadius1:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCurrentRadius:I

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCenterX:I

    iget v2, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCurrentRadius:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCenterY:I

    iget v2, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCurrentRadius:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCenterX:I

    iget v2, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCurrentRadius:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCenterY:I

    iget v2, p0, Lcom/android/launcher3/util/RevealOutlineProvider;->mCurrentRadius:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 43
    return-void
.end method
