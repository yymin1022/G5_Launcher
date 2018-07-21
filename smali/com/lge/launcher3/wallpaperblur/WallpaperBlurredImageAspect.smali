.class public Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;
.super Ljava/lang/Object;
.source "WallpaperBlurredImageAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect"

    sget-object v2, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect$1$ee85e51(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.finishBindingItems())"
    .end annotation

    .prologue
    .line 21
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 23
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->loadWallpaperBlurredImage()V

    .line 26
    return-void
.end method

.method public ajc$after$com_lge_launcher3_wallpaperblur_WallpaperBlurredImageAspect$2$37780436(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void Launcher.onDestroy())"
    .end annotation

    .prologue
    .line 31
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 33
    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->destroy()V

    .line 36
    return-void
.end method
