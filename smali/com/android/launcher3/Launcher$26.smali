.class Lcom/android/launcher3/Launcher$26;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$anim:Landroid/animation/AnimatorSet;

.field private final synthetic val$bounceAnims:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$26;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$26;->val$anim:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$26;->val$bounceAnims:Ljava/util/Collection;

    .line 4040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/android/launcher3/Launcher$26;->val$anim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$26;->val$bounceAnims:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4043
    iget-object v0, p0, Lcom/android/launcher3/Launcher$26;->val$anim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4044
    return-void
.end method
