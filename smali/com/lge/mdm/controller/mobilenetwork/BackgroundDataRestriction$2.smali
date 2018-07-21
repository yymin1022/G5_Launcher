.class final enum Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction$2;
.super Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
.source "BackgroundDataRestriction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;-><init>(Ljava/lang/String;ILcom/lge/mdm/controller/mobilenetwork/BackgroundDataRestriction;)V

    return-void
.end method


# virtual methods
.method ___getRestrictBackground(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method ___setRestrictBackground(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 35
    return-void
.end method
