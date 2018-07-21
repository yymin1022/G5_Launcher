.class Lcom/lge/launcher3/smartbulletin/view/SBContainer$6;
.super Ljava/lang/Object;
.source "SBContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/view/SBContainer;->expandProvider(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$6;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$6;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$3(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 239
    return-void
.end method
