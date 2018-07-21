.class public Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;
.super Ljava/lang/Object;
.source "ElasticHotseatAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_ICON_PROPORTION:F = 0.85f

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 26
    :goto_3
    return-void

    .line 22
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$2$5baadfc2proceed(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$3$dffb09b4proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 477
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$7$d4b961d0proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;)F
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 29
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 30
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;F)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;F)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mVacantCellOrder(Lcom/android/launcher3/CellLayout;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mVertical(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addVacantCell(Lcom/android/launcher3/CellLayout;I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 301
    if-ltz p1, :cond_9

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getHotseatGridSize(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    if-le p1, v0, :cond_22

    .line 302
    :cond_9
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to add vacant cell: invalid order "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 321
    :cond_21
    :goto_21
    return-void

    .line 306
    :cond_22
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canAddVacantCell(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 310
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canReorderChildren(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 315
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add vacant cell at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;I)V

    .line 319
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$adjustGridSize(Lcom/android/launcher3/CellLayout;)V

    .line 320
    const/4 v0, 0x1

    invoke-static {p0, v0, v3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V

    goto :goto_21
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addViewToHotseatCellLayout(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;)Z
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_13

    move-object v0, p1

    .line 155
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 156
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mIsHotseat(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_ae

    move v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 159
    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 164
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    move v1, v2

    move v4, v2

    .line 165
    :goto_2b
    if-lt v1, v5, :cond_b1

    .line 176
    :cond_2d
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Add view "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 180
    if-eqz p1, :cond_9e

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 182
    if-eqz v0, :cond_9e

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 185
    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f0f010e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 192
    :cond_9e
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 193
    iput-boolean v2, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 194
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1, v4, p4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-static {p0, v2, v3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V

    .line 197
    return v3

    :cond_ae
    move v1, v3

    .line 156
    goto/16 :goto_10

    .line 166
    :cond_b1
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 168
    invoke-static {p0, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v0

    invoke-static {p0, p4}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v6

    if-ge v0, v6, :cond_2d

    .line 172
    add-int/lit8 v4, v4, 0x1

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2b
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$adjustGridSize(Lcom/android/launcher3/CellLayout;)V
    .registers 8

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 127
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_11
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 132
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getHotseatGridSize(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    if-ne v1, v0, :cond_1d

    .line 149
    :goto_1c
    return-void

    .line 137
    :cond_1d
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adjust grid size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getHotseatGridSize(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p0, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setHotseatGridSize(Lcom/android/launcher3/CellLayout;I)V

    .line 141
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    invoke-static {p0, v0}, Lcom/android/launcher3/CellLayout;->ajc$set$mOccupied(Lcom/android/launcher3/CellLayout;[[Z)V

    .line 142
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    invoke-static {p0, v0}, Lcom/android/launcher3/CellLayout;->ajc$set$mTmpOccupied(Lcom/android/launcher3/CellLayout;[[Z)V

    .line 143
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mTempRectStack(Lcom/android/launcher3/CellLayout;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->ajc$privMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$measureCellDimension(II)V

    .line 147
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellHeight(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mWidthGap(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mHeightGap(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    .line 148
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v5

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v6

    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    goto/16 :goto_1c
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$calculateChildrenScale(Lcom/android/launcher3/CellLayout;)V
    .registers 5

    .prologue
    const v3, 0x3f59999a    # 0.85f

    .line 507
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mLauncher(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 508
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 510
    cmpl-float v1, v1, v3

    if-lez v1, :cond_36

    .line 511
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 515
    :goto_23
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mHotseatScale(Lcom/android/launcher3/CellLayout;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_35

    .line 516
    invoke-static {p0, v0}, Lcom/android/launcher3/CellLayout;->ajc$set$mHotseatScale(Lcom/android/launcher3/CellLayout;F)V

    .line 517
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mHotseatScale(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildrenScaleChanged(Lcom/android/launcher3/CellLayout;F)V

    .line 519
    :cond_35
    return-void

    .line 513
    :cond_36
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->hotseatIconSizePx:I

    int-to-float v1, v1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_23
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canAddVacantCell(Lcom/android/launcher3/CellLayout;)Z
    .registers 3

    .prologue
    .line 448
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getHotseatGridSize(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxCount(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canReorderChildren(Lcom/android/launcher3/CellLayout;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    move v2, v1

    .line 288
    :goto_a
    if-lt v2, v3, :cond_e

    .line 297
    const/4 v0, 0x1

    :goto_d
    return v0

    .line 289
    :cond_e
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 292
    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v0, :cond_22

    move v0, v1

    .line 293
    goto :goto_d

    .line 288
    :cond_22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 438
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cleanup vacant cell"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    if-eq v0, v2, :cond_1a

    .line 441
    invoke-static {p0, v2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;I)V

    .line 442
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$adjustGridSize(Lcom/android/launcher3/CellLayout;)V

    .line 443
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V

    .line 445
    :cond_1a
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertArea(Lcom/android/launcher3/CellLayout;II[I)[I
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    if-nez p3, :cond_7

    .line 265
    const/4 v0, 0x2

    new-array p3, v0, [I

    .line 268
    :cond_7
    const/4 v0, -0x1

    aput v0, p3, v2

    aput v0, p3, v1

    .line 270
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1b

    .line 271
    aput v1, p3, v2

    aput v1, p3, v1

    .line 278
    :goto_1a
    return-object p3

    .line 275
    :cond_1b
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 276
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertAreaInVerticalLayout(Lcom/android/launcher3/CellLayout;II[I)[I

    move-result-object p3

    goto :goto_1a

    .line 278
    :cond_26
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertAreaInHorizontalLayout(Lcom/android/launcher3/CellLayout;II[I)[I

    move-result-object p3

    goto :goto_1a
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertAreaInHorizontalLayout(Lcom/android/launcher3/CellLayout;II[I)[I
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v0

    move v3, v1

    move v0, v1

    .line 240
    :goto_17
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    if-lt v0, v4, :cond_2b

    .line 255
    :goto_1d
    aget v0, p3, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2a

    .line 256
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    aput v0, p3, v1

    .line 257
    aput v1, p3, v7

    .line 260
    :cond_2a
    return-object p3

    .line 241
    :cond_2b
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    if-ne v0, v4, :cond_5d

    .line 242
    int-to-float v2, v2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mWidthGap(Lcom/android/launcher3/CellLayout;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v4, v2

    .line 245
    :goto_46
    if-gt v3, p1, :cond_4f

    if-ge p1, v4, :cond_4f

    .line 246
    aput v0, p3, v1

    .line 247
    aput v1, p3, v7

    goto :goto_1d

    .line 252
    :cond_4f
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellWidth(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mWidthGap(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    .line 240
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_17

    :cond_5d
    move v4, v2

    goto :goto_46
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertAreaInVerticalLayout(Lcom/android/launcher3/CellLayout;II[I)[I
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellHeight(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v0

    move v3, v1

    move v0, v1

    .line 214
    :goto_17
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    if-lt v0, v4, :cond_2b

    .line 229
    :goto_1d
    aget v0, p3, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2a

    .line 230
    aput v1, p3, v1

    .line 231
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    aput v0, p3, v7

    .line 234
    :cond_2a
    return-object p3

    .line 215
    :cond_2b
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    if-ne v0, v4, :cond_5d

    .line 216
    int-to-float v2, v2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellHeight(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mHeightGap(Lcom/android/launcher3/CellLayout;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v4, v2

    .line 219
    :goto_46
    if-gt v3, p2, :cond_4f

    if-ge p2, v4, :cond_4f

    .line 220
    aput v1, p3, v1

    .line 221
    aput v0, p3, v7

    goto :goto_1d

    .line 226
    :cond_4f
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCellHeight(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mHeightGap(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    .line 214
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_17

    :cond_5d
    move v4, v2

    goto :goto_46
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getHotseatGridSize(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 80
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    .line 83
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    goto :goto_a
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;)I
    .registers 3

    .prologue
    .line 96
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_8
    return v0

    :cond_9
    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxCount(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mIsHotseat(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 50
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    .line 54
    :goto_a
    return v0

    .line 53
    :cond_b
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mLauncher(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 54
    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    float-to-int v0, v0

    goto :goto_a
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F
    .registers 2

    .prologue
    .line 58
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;)J
    .registers 4

    .prologue
    .line 110
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    return-wide v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$hasVacantCell(Lcom/android/launcher3/CellLayout;)Z
    .registers 3

    .prologue
    .line 283
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$isValidTouchArea(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 470
    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object v0, p0

    move v4, v3

    .line 471
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    .line 472
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v0

    .line 474
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    :goto_22
    return v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$moveVacantCell(Lcom/android/launcher3/CellLayout;I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 324
    if-ltz p1, :cond_9

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getHotseatGridSize(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    if-lt p1, v0, :cond_22

    .line 325
    :cond_9
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to move vacant cell: invalid order "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 343
    :cond_21
    :goto_21
    return-void

    .line 329
    :cond_22
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    if-eq v0, p1, :cond_21

    .line 333
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canReorderChildren(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 338
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Move vacant cell: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {p0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;I)V

    .line 342
    const/4 v0, 0x1

    invoke-static {p0, v0, v3}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V

    goto :goto_21
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onCellLayoutCreated(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    .prologue
    .line 34
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 35
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mLauncher(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 36
    const v1, 0x3f0ccccd    # 0.55f

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {p0, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;F)V

    .line 37
    const v1, 0x3f59999a    # 0.85f

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {p0, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mInvalidTouchDistance(Lcom/android/launcher3/CellLayout;F)V

    .line 38
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;Z)V

    .line 39
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildViewAdded(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mIsHotseat(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-ne p1, v0, :cond_2b

    .line 64
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child view "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$adjustGridSize(Lcom/android/launcher3/CellLayout;)V

    .line 68
    :cond_2b
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildViewRemoved(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mIsHotseat(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-ne p1, v0, :cond_2b

    .line 73
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child view "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$adjustGridSize(Lcom/android/launcher3/CellLayout;)V

    .line 77
    :cond_2b
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildrenScaleChanged(Lcom/android/launcher3/CellLayout;F)V
    .registers 5

    .prologue
    .line 496
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mLauncher(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 497
    const v1, 0x3f0ccccd    # 0.55f

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    invoke-static {p0, v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;F)V

    .line 498
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 499
    const/4 v0, 0x0

    :goto_1c
    if-lt v0, v1, :cond_1f

    .line 504
    return-void

    .line 500
    :cond_1f
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 501
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 502
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$performReorderForHotseat(Lcom/android/launcher3/CellLayout;IIIIIILandroid/view/View;[I[II)[I
    .registers 16

    .prologue
    const/4 v1, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 398
    if-nez p8, :cond_5f

    .line 399
    new-array v0, v1, [I

    .line 402
    :goto_8
    if-nez p9, :cond_c

    .line 403
    new-array p9, v1, [I

    .line 406
    :cond_c
    if-eq p5, v2, :cond_10

    if-ne p6, v2, :cond_16

    :cond_10
    instance-of v1, p7, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_16

    .line 407
    if-nez p10, :cond_1f

    .line 408
    :cond_16
    aput v4, p9, v2

    aput v4, p9, v3

    aput v4, v0, v2

    aput v4, v0, v3

    .line 433
    :goto_1e
    return-object v0

    .line 413
    :cond_1f
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 414
    :goto_25
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$hasVacantCell(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 415
    invoke-static {p0, p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$moveVacantCell(Lcom/android/launcher3/CellLayout;I)V

    .line 420
    :goto_2e
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    if-ne v1, v4, :cond_43

    .line 421
    aput v4, p9, v2

    aput v4, p9, v3

    aput v4, v0, v2

    aput v4, v0, v3

    goto :goto_1e

    :cond_3d
    move p2, p1

    .line 413
    goto :goto_25

    .line 417
    :cond_3f
    invoke-static {p0, p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addVacantCell(Lcom/android/launcher3/CellLayout;I)V

    goto :goto_2e

    .line 423
    :cond_43
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 424
    aput v3, v0, v3

    .line 425
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    aput v1, v0, v2

    .line 430
    :goto_51
    aput v2, p9, v2

    aput v2, p9, v3

    goto :goto_1e

    .line 427
    :cond_56
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    aput v1, v0, v3

    .line 428
    aput v3, v0, v2

    goto :goto_51

    :cond_5f
    move-object v0, p8

    goto :goto_8
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V
    .registers 14

    .prologue
    .line 347
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rearrange children"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v10

    .line 351
    const/4 v1, 0x0

    .line 352
    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    :goto_15
    if-lt v9, v10, :cond_37

    .line 384
    if-nez p1, :cond_20

    .line 385
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 388
    :cond_20
    if-eqz p2, :cond_36

    .line 390
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Commit rearrangement"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mLauncher(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->ajc$privMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$updateItemLocationsInDatabase(Lcom/android/launcher3/CellLayout;)V

    .line 394
    :cond_36
    return-void

    .line 353
    :cond_37
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVacantCellOrder(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    if-ne v0, v1, :cond_ae

    .line 354
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    .line 357
    :goto_40
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mShortcutsAndWidgets(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 360
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 361
    if-eqz v2, :cond_88

    .line 362
    invoke-static {p0, v2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;)J

    move-result-wide v4

    int-to-long v6, v8

    cmp-long v3, v4, v6

    if-eqz v3, :cond_62

    .line 363
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    .line 366
    :cond_62
    invoke-static {p0, v2, v8}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;I)V

    .line 367
    invoke-static {p0, v0, v8}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;I)V

    .line 370
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_88
    if-eqz p1, :cond_9f

    .line 375
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 376
    const/4 v7, 0x0

    move-object v0, p0

    .line 375
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 381
    :goto_97
    add-int/lit8 v1, v8, 0x1

    .line 352
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v0, v1

    goto/16 :goto_15

    .line 378
    :cond_9f
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_97

    :cond_ae
    move v8, v0

    goto :goto_40
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$returnToOriginalPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$CellInfo;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 453
    invoke-static {}, Lcom/android/launcher3/CellLayout;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Return to original position"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {p1}, Lcom/android/launcher3/CellLayout$CellInfo;->ajc$get$cell(Lcom/android/launcher3/CellLayout$CellInfo;)Landroid/view/View;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 457
    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->ajc$get$mLauncher(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I

    move-result v3

    .line 459
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 458
    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    move-object v0, p0

    move v5, v2

    .line 461
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 462
    invoke-static {p0, v6}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 463
    invoke-static {p0, v6, v6}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V

    .line 464
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setHotseatGridSize(Lcom/android/launcher3/CellLayout;I)V
    .registers 3

    .prologue
    .line 88
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 89
    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mCountY(Lcom/android/launcher3/CellLayout;I)V

    .line 93
    :goto_9
    return-void

    .line 91
    :cond_a
    invoke-static {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$set$mCountX(Lcom/android/launcher3/CellLayout;I)V

    goto :goto_9
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 101
    iput v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 102
    iput p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 107
    :goto_b
    return-void

    .line 104
    :cond_c
    iput p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 105
    iput v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_b
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-static {p0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$mVertical(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 115
    iput v1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 116
    iput p2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 122
    :goto_b
    int-to-long v0, p2

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 123
    return-void

    .line 118
    :cond_f
    iput p2, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 119
    iput v1, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    goto :goto_b
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_DragController$onDragCancel(Lcom/android/launcher3/DragController;)V
    .registers 2

    .prologue
    .line 563
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mDragging(Lcom/android/launcher3/DragController;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLastDropTarget(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_17

    .line 564
    invoke-static {p0}, Lcom/android/launcher3/DragController;->ajc$get$mLastDropTarget(Lcom/android/launcher3/DragController;)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 565
    invoke-static {v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$onDragCancel(Lcom/android/launcher3/Workspace;)V

    .line 567
    :cond_17
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$onDragCancel(Lcom/android/launcher3/Workspace;)V
    .registers 3

    .prologue
    .line 544
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragTargetLayout(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 546
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 548
    :cond_10
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$onDragStartForHotseat(Lcom/android/launcher3/Workspace;)V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 527
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragInfo(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragInfo(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/CellLayout$CellInfo;->ajc$get$container(Lcom/android/launcher3/CellLayout$CellInfo;)J

    move-result-wide v0

    const-wide/16 v4, -0x65

    cmp-long v0, v0, v4

    if-nez v0, :cond_50

    .line 528
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 529
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragInfo(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/CellLayout$CellInfo;->ajc$get$cell(Lcom/android/launcher3/CellLayout$CellInfo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 530
    iget v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 531
    iget v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 532
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragInfo(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/CellLayout$CellInfo;->ajc$get$cell(Lcom/android/launcher3/CellLayout$CellInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 534
    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mDragInfo(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/CellLayout$CellInfo;->ajc$get$cell(Lcom/android/launcher3/CellLayout$CellInfo;)Landroid/view/View;

    move-result-object v7

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v9, v8

    move v10, v3

    .line 533
    invoke-static/range {v0 .. v10}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$performReorderForHotseat(Lcom/android/launcher3/CellLayout;IIIIIILandroid/view/View;[I[II)[I

    .line 536
    :cond_50
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addVacantCell(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$addVacantCell(I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addViewToHotseatCellLayout(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;)Z
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$addViewToHotseatCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$adjustGridSize(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$adjustGridSize()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$calculateChildrenScale(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->calculateChildrenScale()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canAddVacantCell(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->canAddVacantCell()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$canReorderChildren(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$canReorderChildren()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->cleanupVacantCell(Z)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertArea(Lcom/android/launcher3/CellLayout;II[I)[I
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->findInsertArea(II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertAreaInHorizontalLayout(Lcom/android/launcher3/CellLayout;II[I)[I
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->findInsertAreaInHorizontalLayout(II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$findInsertAreaInVerticalLayout(Lcom/android/launcher3/CellLayout;II[I)[I
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->findInsertAreaInVerticalLayout(II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getHotseatGridSize(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$getHotseatGridSize()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$getLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxCount(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMaxCount()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMaxDistanceForFolderCreation()F

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$getOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$getOrderInHotseat(Lcom/android/launcher3/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$hasVacantCell(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$hasVacantCell()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$isValidTouchArea(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->isValidTouchArea(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$moveVacantCell(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$moveVacantCell(I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onCellLayoutCreated(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$onCellLayoutCreated()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildViewAdded(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildViewRemoved(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onChildrenScaleChanged(Lcom/android/launcher3/CellLayout;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->onChildrenScaleChanged(F)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$performReorderForHotseat(Lcom/android/launcher3/CellLayout;IIIIIILandroid/view/View;[I[II)[I
    .registers 12

    invoke-virtual/range {p0 .. p10}, Lcom/android/launcher3/CellLayout;->performReorderForHotseat(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->rearrangeChildren(ZZ)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$returnToOriginalPosition(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$CellInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->returnToOriginalPosition(Lcom/android/launcher3/CellLayout$CellInfo;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setHotseatGridSize(Lcom/android/launcher3/CellLayout;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$setHotseatGridSize(I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$setLayoutOrderInHotseat(Lcom/android/launcher3/CellLayout$LayoutParams;I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$setOrderInHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$setOrderInHotseat(Lcom/android/launcher3/ItemInfo;I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_DragController$onDragCancel(Lcom/android/launcher3/DragController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/DragController;->onDragCancel()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$onDragCancel(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->onDragCancel()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$onDragStartForHotseat(Lcom/android/launcher3/Workspace;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ajc$interMethodDispatch2$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$onDragStartForHotseat()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_elastichotseat_ElasticHotseatAspect"

    sget-object v2, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "constructor()"
    .end annotation

    .prologue
    .line 44
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 45
    invoke-static {v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$onCellLayoutCreated(Lcom/android/launcher3/CellLayout;)V

    .line 46
    return-void
.end method

.method public ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$10$d9685c67(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void CellLayout.removeView(View))"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 583
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 584
    invoke-static {v0, v2, v2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V

    .line 586
    :cond_10
    return-void
.end method

.method public ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$4$478447b8(ZLorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "isHotseat"
        value = "(execution(public void CellLayout.setIsHotseat(boolean)) && args(isHotseat))"
    .end annotation

    .prologue
    .line 487
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 489
    if-eqz p1, :cond_13

    .line 490
    invoke-static {v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$adjustGridSize(Lcom/android/launcher3/CellLayout;)V

    .line 491
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setClipChildren(Z)V

    .line 493
    :cond_13
    return-void
.end method

.method public ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$5$6b437fdf(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(private void CellLayout.measureCellDimension(..))"
    .end annotation

    .prologue
    .line 522
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 523
    invoke-static {v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$calculateChildrenScale(Lcom/android/launcher3/CellLayout;)V

    .line 524
    return-void
.end method

.method public ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$6$f0d704e(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(void Workspace.onDragStart(..))"
    .end annotation

    .prologue
    .line 539
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 540
    invoke-static {v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_Workspace$onDragStartForHotseat(Lcom/android/launcher3/Workspace;)V

    .line 541
    return-void
.end method

.method public ajc$after$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$9$b83342b8(Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void CellLayout.removeViewInLayout(View))"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 575
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 576
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 577
    invoke-static {v0, v2, v2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$rearrangeChildren(Lcom/android/launcher3/CellLayout;ZZ)V

    .line 579
    :cond_10
    return-void
.end method

.method public ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$2$5baadfc2(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "child,index,childId,params,markCells,ajc$aroundClosure"
        value = "(execution(boolean CellLayout.addViewToCellLayout(View, int, int, LayoutParams, boolean)) && args(child, index, childId, params, markCells))"
    .end annotation

    .prologue
    .line 203
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 204
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 205
    invoke-static {v0, p1, p2, p3, p4}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$addViewToHotseatCellLayout(Lcom/android/launcher3/CellLayout;Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;)Z

    move-result v0

    .line 207
    :goto_10
    return v0

    :cond_11
    invoke-static/range {p1 .. p6}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$2$5baadfc2proceed(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;ZLorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_10
.end method

.method public ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$3$dffb09b4(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ev,ajc$aroundClosure"
        value = "(execution(boolean CellLayout.onInterceptTouchEvent(MotionEvent)) && args(ev))"
    .end annotation

    .prologue
    .line 478
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 479
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0, p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$isValidTouchArea(Lcom/android/launcher3/CellLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 480
    const/4 v0, 0x1

    .line 483
    :goto_13
    return v0

    :cond_14
    invoke-static {p1, p2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$3$dffb09b4proceed(Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_13
.end method

.method public ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$7$d4b961d0(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(boolean Workspace.acceptDrop(..))"
    .end annotation

    .prologue
    .line 551
    invoke-static {p1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$around$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$7$d4b961d0proceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v1

    .line 552
    if-nez v1, :cond_1e

    .line 553
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 554
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 555
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 556
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 559
    :cond_1e
    return v1
.end method

.method public ajc$before$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$8$6fc88d18(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(void DragController.cancelDrag(..))"
    .end annotation

    .prologue
    .line 570
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragController;

    .line 571
    invoke-static {v0}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_DragController$onDragCancel(Lcom/android/launcher3/DragController;)V

    .line 572
    return-void
.end method

.method synthetic ajc$declare_parents_1()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = false
        parentTypes = "android.view.ViewGroup$OnHierarchyChangeListener"
        targetTypePattern = "com.android.launcher3.CellLayout"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method public synthetic ajc$pointcut$$constructor$617()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "initialization(com.android.launcher3.CellLayout.new(..))"
    .end annotation

    .prologue
    .line 41
    return-void
.end method
