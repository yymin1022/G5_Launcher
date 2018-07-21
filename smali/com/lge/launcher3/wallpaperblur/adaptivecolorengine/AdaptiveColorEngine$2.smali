.class Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$2;
.super Ljava/lang/Object;
.source "AdaptiveColorEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->notifyConfigurationChanged()V
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
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$2;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine$2;->this$0:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;->access$5(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorEngine;)V

    .line 139
    return-void
.end method
