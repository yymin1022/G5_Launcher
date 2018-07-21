.class abstract Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.super Ljava/lang/Object;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PrivateTransitionCallbacks"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .registers 4

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method getMaterialRevealViewStartFinalRadius()F
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method onTransitionComplete()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method
