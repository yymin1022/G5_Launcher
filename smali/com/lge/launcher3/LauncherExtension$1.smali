.class Lcom/lge/launcher3/LauncherExtension$1;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/LauncherExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/LauncherExtension;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$1;->this$0:Lcom/lge/launcher3/LauncherExtension;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 156
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$initCustomAppIconList(Lcom/android/launcher3/IconCache;)V

    .line 158
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$flush(Lcom/android/launcher3/IconCache;)V

    .line 159
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$1;->this$0:Lcom/lge/launcher3/LauncherExtension;

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 160
    return-void
.end method
