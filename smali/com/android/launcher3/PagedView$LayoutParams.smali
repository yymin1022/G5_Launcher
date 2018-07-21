.class public Lcom/android/launcher3/PagedView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public isFullScreenPage:Z

.field public isOverviewMode:Z


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 701
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 694
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 695
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isOverviewMode:Z

    .line 702
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 705
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 694
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 695
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isOverviewMode:Z

    .line 706
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 709
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 695
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isOverviewMode:Z

    .line 710
    return-void
.end method
