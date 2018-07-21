.class Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect$WidgetBlurAspect$1;
.super Ljava/lang/Object;
.source "WidgetBlurAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$5$d25310a2(Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect$WidgetBlurAspect$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    iput-object p2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect$WidgetBlurAspect$1;->val$context:Landroid/content/Context;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect$WidgetBlurAspect$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewInCurrentPage(Z)V

    .line 159
    return-void
.end method
