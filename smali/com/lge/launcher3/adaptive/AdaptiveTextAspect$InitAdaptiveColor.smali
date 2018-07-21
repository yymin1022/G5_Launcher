.class Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$InitAdaptiveColor;
.super Ljava/lang/Object;
.source "AdaptiveTextAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitAdaptiveColor"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$InitAdaptiveColor;->this$0:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$InitAdaptiveColor;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$InitAdaptiveColor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->runAdaptiveColor(Landroid/content/Context;)V

    .line 108
    return-void
.end method
