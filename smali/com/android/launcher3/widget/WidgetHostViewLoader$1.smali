.class Lcom/android/launcher3/widget/WidgetHostViewLoader$1;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

.field private final synthetic val$options:Landroid/os/Bundle;

.field private final synthetic val$pInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$pInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$options:Landroid/os/Bundle;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$pInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$options:Landroid/os/Bundle;

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    .line 92
    if-eqz v0, :cond_31

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_31
    return-void
.end method
