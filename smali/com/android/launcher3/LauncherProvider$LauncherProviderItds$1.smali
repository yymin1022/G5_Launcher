.class public Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;
.super Ljava/lang/Object;
.source "LauncherProviderItds.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherProvider;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$deleteAppWidgetIds(Lcom/android/launcher3/LauncherProvider;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherProvider;

.field private final synthetic val$ids:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherProvider;[I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;->this$0:Lcom/android/launcher3/LauncherProvider;

    iput-object p2, p0, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;->val$ids:[I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;->this$0:Lcom/android/launcher3/LauncherProvider;

    invoke-static {v0}, Lcom/android/launcher3/LauncherProvider;->ajc$get$mListener(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProviderChangeListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;->this$0:Lcom/android/launcher3/LauncherProvider;

    invoke-static {v0}, Lcom/android/launcher3/LauncherProvider;->ajc$get$mListener(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProviderChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;->val$ids:[I

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherProviderChangeListener;->onDeleteAppWidgetIds([I)V

    .line 49
    :cond_13
    return-void

    .line 44
    :cond_14
    new-instance v1, Landroid/appwidget/AppWidgetHost;

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;->this$0:Lcom/android/launcher3/LauncherProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 45
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$LauncherProviderItds$1;->val$ids:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_25
    if-ge v0, v3, :cond_13

    aget v4, v2, v0

    .line 46
    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method
