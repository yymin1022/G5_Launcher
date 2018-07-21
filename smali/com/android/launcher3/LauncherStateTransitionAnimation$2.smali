.class Lcom/android/launcher3/LauncherStateTransitionAnimation$2;
.super Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWidgets(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$2;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    .line 175
    invoke-direct {p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 178
    const v0, 0x3e99999a    # 0.3f

    return v0
.end method
