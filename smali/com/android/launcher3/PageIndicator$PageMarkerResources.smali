.class public Lcom/android/launcher3/PageIndicator$PageMarkerResources;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageMarkerResources"
.end annotation


# instance fields
.field public activeId:I

.field public inactiveId:I

.field public mActiveColor:I

.field public mInactiveColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mActiveColor:I

    .line 49
    iput v0, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mInactiveColor:I

    .line 52
    const v0, 0x7f02006b

    iput v0, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    .line 53
    const v0, 0x7f02006d

    iput v0, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    .line 54
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mActiveColor:I

    .line 49
    iput v0, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mInactiveColor:I

    .line 56
    iput p1, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    .line 57
    iput p2, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mActiveColor:I

    .line 49
    iput v0, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mInactiveColor:I

    .line 62
    iput p1, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    .line 63
    iput p2, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    .line 64
    iput p3, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mActiveColor:I

    .line 65
    iput p4, p0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;->mInactiveColor:I

    .line 66
    return-void
.end method
