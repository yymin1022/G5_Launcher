.class Lcom/android/launcher3/LauncherAnimUtils$2;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherAnimUtils;->startAnimationAfterNextDraw(Landroid/animation/Animator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field private final synthetic val$animator:Landroid/animation/Animator;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/Animator;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .registers 5

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->mStarted:Z

    if-eqz v0, :cond_5

    .line 78
    :cond_4
    :goto_4
    return-void

    .line 65
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->mStarted:Z

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/LauncherAnimUtils$2$1;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/launcher3/LauncherAnimUtils$2$1;-><init>(Lcom/android/launcher3/LauncherAnimUtils$2;Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method
