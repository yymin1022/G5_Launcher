.class Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;
.super Ljava/lang/Object;
.source "AdaptiveTextUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->runAdaptiveColor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;->val$applicationContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getDefaultAdaptiveColor(Landroid/content/Context;)I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->isLiveWallpaperMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 40
    iget-object v1, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->access$0(Landroid/content/Context;)I

    move-result v1

    .line 42
    const/16 v2, 0xbe

    if-le v1, v2, :cond_25

    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 46
    :cond_25
    sget-object v1, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "runAdaptiveColor : %d(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 46
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->saveAdaptiveTextColor(Landroid/content/Context;I)V

    .line 49
    iget-object v1, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->sendWallpaperBrightness(Landroid/content/Context;I)V

    .line 50
    return-void
.end method
