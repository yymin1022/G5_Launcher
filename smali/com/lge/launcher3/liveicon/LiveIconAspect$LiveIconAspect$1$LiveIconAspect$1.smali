.class Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1$LiveIconAspect$1;
.super Ljava/lang/Object;
.source "LiveIconAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;->onLiveIconUpdate(Lcom/lge/launcher3/liveicon/LiveIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;

.field private final synthetic val$icon:Lcom/lge/launcher3/liveicon/LiveIcon;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;Lcom/lge/launcher3/liveicon/LiveIcon;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1$LiveIconAspect$1;->this$1:Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1;

    iput-object p2, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1$LiveIconAspect$1;->val$icon:Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 34
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v2

    .line 37
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/LiveIconAspect$LiveIconAspect$1$LiveIconAspect$1;->val$icon:Lcom/lge/launcher3/liveicon/LiveIcon;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    .line 45
    return-void

    .line 41
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/UserHandleCompat;

    .line 42
    invoke-static {v2, v3, v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$removeIcon(Lcom/android/launcher3/IconCache;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 43
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lcom/lge/launcher3/liveicon/LiveIconAspect;->ajc$interMethodDispatch1$com_lge_launcher3_liveicon_LiveIconAspect$com_android_launcher3_LauncherModel$onLiveIconUpdated(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    goto :goto_22
.end method
