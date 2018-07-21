.class Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;
.super Landroid/os/AsyncTask;
.source "AppWidgetsRestoredReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/AppWidgetsRestoredReceiver;->restoreAppWidgetIds(Landroid/content/Context;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final synthetic val$idsToRemove:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/appwidget/AppWidgetHost;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$idsToRemove:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 83
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$idsToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 87
    const-string v2, "AppWidgetsRestoredReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Widget no longer present, appWidgetId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method
