.class Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;
.super Ljava/lang/Object;
.source "BackgroundDataRestriction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;->setRestrictBackground(Landroid/content/Context;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$r:Ljava/lang/Runnable;

.field final synthetic val$restrictBackground:Z


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;Landroid/content/Context;ZLjava/lang/Runnable;)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$restrictBackground"    # Z
    .param p4, "val$r"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;->this$0:Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;

    iput-object p2, p0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;->val$restrictBackground:Z

    iput-object p4, p0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;->val$restrictBackground:Z

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 65
    iget-object v0, p0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;->val$r:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$3;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 63
    :cond_14
    return-void
.end method
