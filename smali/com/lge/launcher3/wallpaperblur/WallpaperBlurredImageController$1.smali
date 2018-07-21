.class Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperBlurredImageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    .line 477
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 482
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->access$0(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 492
    :cond_f
    :goto_f
    return-void

    .line 486
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 487
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 488
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->access$1(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)V

    .line 490
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->loadWallpaperBlurredImage()V

    goto :goto_f
.end method
