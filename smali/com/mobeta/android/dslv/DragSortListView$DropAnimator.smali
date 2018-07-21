.class public Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;
.super Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .registers 4

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 1137
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 1138
    return-void
.end method

.method private getTargetY()I
    .registers 5

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1151
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v1, v1, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1152
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1153
    const/4 v0, -0x1

    .line 1154
    if-eqz v2, :cond_44

    .line 1155
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ne v0, v3, :cond_2b

    .line 1156
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1169
    :goto_2a
    return v0

    .line 1157
    :cond_2b
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ge v0, v3, :cond_37

    .line 1159
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1160
    goto :goto_2a

    .line 1162
    :cond_37
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$11(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1164
    goto :goto_2a

    .line 1166
    :cond_44
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->cancel()V

    goto :goto_2a
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$8(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    .line 1143
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$9(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    .line 1144
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$10(Lcom/mobeta/android/dslv/DragSortListView;I)V

    .line 1145
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1146
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    .line 1147
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$12(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 1189
    return-void
.end method

.method public onUpdate(FF)V
    .registers 8

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v0

    .line 1175
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 1176
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 1177
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 1178
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    .line 1179
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_38

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_5e

    .line 1180
    :cond_38
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1181
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1182
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$7(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 1184
    :cond_5e
    return-void
.end method
