.class Lcom/android/launcher3/LauncherClings$3;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherClings;->showLongPressCling(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherClings;

.field private final synthetic val$content:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherClings;Landroid/view/ViewGroup;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherClings$3;->this$0:Lcom/android/launcher3/LauncherClings;

    iput-object p2, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 163
    const-string v0, "crop_bg_top_and_sides"

    iget-object v1, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    const-string v1, "translationY"

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 174
    :goto_35
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 175
    new-instance v1, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v4}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 177
    return-void

    .line 167
    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 169
    const-string v0, "scaleX"

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 170
    const-string v1, "scaleY"

    new-array v2, v5, [F

    aput v6, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/android/launcher3/LauncherClings$3;->val$content:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_35
.end method
