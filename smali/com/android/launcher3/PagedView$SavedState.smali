.class public Lcom/android/launcher3/PagedView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/launcher3/PagedView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2279
    new-instance v0, Lcom/android/launcher3/PagedView$SavedState$1;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$SavedState$1;-><init>()V

    .line 2278
    sput-object v0, Lcom/android/launcher3/PagedView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2287
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 2268
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2261
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    .line 2269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    .line 2270
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 2264
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2261
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    .line 2265
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 2274
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2275
    iget v0, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2276
    return-void
.end method
