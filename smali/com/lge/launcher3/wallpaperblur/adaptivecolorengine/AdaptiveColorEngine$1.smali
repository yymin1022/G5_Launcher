.class Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;
.super Ljava/lang/Object;
.source "AdaptiveColorEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->setImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$0(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    .line 112
    :goto_8
    return-void

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$0(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_10
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$1(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 104
    monitor-exit v1

    goto :goto_8

    .line 102
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v0

    .line 106
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$2(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$1(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorextractor/ColorExtractor;->extract(Landroid/graphics/Bitmap;)[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->update([Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;)V

    .line 107
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$3(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;

    move-result-object v0

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$0(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$1(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$2(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->getBlurRadius()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/imageblur/StaticBlurEngine;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 108
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$1(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$4(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;Landroid/graphics/Bitmap;)V

    .line 102
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_1d .. :try_end_63} :catchall_1a

    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$1;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$5(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)V

    goto :goto_8
.end method
