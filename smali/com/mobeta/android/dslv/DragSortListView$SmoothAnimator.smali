.class Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothAnimator"
.end annotation


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field private mDurationF:F

.field protected mStartTime:J

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .registers 8

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1036
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    .line 1038
    int-to-float v0, p3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mDurationF:F

    .line 1039
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mD:F

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mA:F

    .line 1040
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mB:F

    .line 1041
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mC:F

    .line 1042
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1063
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 1067
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 1075
    return-void
.end method

.method public onUpdate(FF)V
    .registers 3

    .prologue
    .line 1071
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1079
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    if-eqz v0, :cond_7

    .line 1092
    :goto_6
    return-void

    .line 1083
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mDurationF:F

    div-float/2addr v0, v1

    .line 1085
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_1d

    .line 1086
    invoke-virtual {p0, v4, v4}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1087
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onStop()V

    goto :goto_6

    .line 1089
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->transform(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1090
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public start()V
    .registers 3

    .prologue
    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    .line 1056
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1057
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onStart()V

    .line 1058
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1059
    return-void
.end method

.method public transform(F)F
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1045
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    .line 1046
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 1050
    :goto_c
    return v0

    .line 1047
    :cond_d
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1c

    .line 1048
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mB:F

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_c

    .line 1050
    :cond_1c
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mD:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_c
.end method
