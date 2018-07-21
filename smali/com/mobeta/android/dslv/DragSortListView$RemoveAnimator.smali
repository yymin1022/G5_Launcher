.class public Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;
.super Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mFloatLocX:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field private srcPos:I

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 1209
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 1210
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 1202
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1203
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1211
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 1215
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1216
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1217
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$13(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1218
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$14(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1219
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$9(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->srcPos:I

    .line 1220
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v2, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$10(Lcom/mobeta/android/dslv/DragSortListView;I)V

    .line 1222
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1223
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$15(Lcom/mobeta/android/dslv/DragSortListView;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 1224
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 1225
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$16(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_5b

    .line 1226
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_59

    :goto_53
    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v3, v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$17(Lcom/mobeta/android/dslv/DragSortListView;F)V

    .line 1237
    :cond_58
    :goto_58
    return-void

    :cond_59
    move v0, v1

    .line 1226
    goto :goto_53

    .line 1228
    :cond_5b
    mul-float v0, v2, v4

    .line 1229
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$16(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_79

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$16(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_79

    .line 1230
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    neg-float v0, v0

    invoke-static {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$17(Lcom/mobeta/android/dslv/DragSortListView;F)V

    goto :goto_58

    .line 1231
    :cond_79
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$16(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_58

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$16(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_58

    .line 1232
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$17(Lcom/mobeta/android/dslv/DragSortListView;F)V

    goto :goto_58

    .line 1235
    :cond_93
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$18(Lcom/mobeta/android/dslv/DragSortListView;)V

    goto :goto_58
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$20(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 1292
    return-void
.end method

.method public onUpdate(FF)V
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1241
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, p2

    .line 1243
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1244
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1248
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$15(Lcom/mobeta/android/dslv/DragSortListView;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mStartTime:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v6, v0, v6

    .line 1250
    cmpl-float v0, v6, v11

    if-nez v0, :cond_30

    .line 1287
    :cond_2f
    :goto_2f
    return-void

    .line 1252
    :cond_30
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$16(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    mul-float v7, v0, v6

    .line 1253
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v8

    .line 1254
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v9}, Lcom/mobeta/android/dslv/DragSortListView;->access$16(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v10

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$16(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_82

    move v0, v1

    :goto_4f
    int-to-float v0, v0

    mul-float/2addr v0, v6

    int-to-float v6, v8

    mul-float/2addr v0, v6

    add-float/2addr v0, v10

    invoke-static {v9, v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$17(Lcom/mobeta/android/dslv/DragSortListView;F)V

    .line 1255
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1256
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$5(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    float-to-int v6, v6

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 1257
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    int-to-float v6, v8

    cmpg-float v0, v0, v6

    if-gez v0, :cond_84

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    neg-int v6, v8

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_84

    .line 1258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mStartTime:J

    .line 1259
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$7(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    goto :goto_2f

    :cond_82
    move v0, v2

    .line 1254
    goto :goto_4f

    .line 1264
    :cond_84
    if-eqz v5, :cond_b2

    .line 1265
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    if-ne v0, v2, :cond_9e

    .line 1266
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    invoke-static {v0, v6, v5, v12}, Lcom/mobeta/android/dslv/DragSortListView;->access$19(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1267
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1269
    :cond_9e
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1270
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1271
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v0, v7

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1272
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    :cond_b2
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v0, v5, :cond_2f

    .line 1275
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    sub-int v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1276
    if-eqz v0, :cond_2f

    .line 1277
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    if-ne v4, v2, :cond_dc

    .line 1278
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    invoke-static {v2, v4, v0, v12}, Lcom/mobeta/android/dslv/DragSortListView;->access$19(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1279
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1281
    :cond_dc
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1282
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1283
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1284
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2f
.end method
