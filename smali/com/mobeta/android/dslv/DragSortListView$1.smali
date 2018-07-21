.class Lcom/mobeta/android/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$1;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .registers 5

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$1;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    mul-float/2addr v0, p1

    return v0
.end method
