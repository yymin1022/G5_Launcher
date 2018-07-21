.class Lcom/android/launcher3/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    .line 1803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 1807
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_20

    .line 1808
    const/4 v0, 0x0

    .line 1809
    iget-object v1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1821
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Launcher;->sendAdvanceMessage(J)V

    .line 1823
    :cond_20
    return v6

    .line 1809
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1810
    iget-object v1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1811
    mul-int/lit16 v1, v2, 0xfa

    .line 1812
    instance-of v4, v0, Landroid/widget/Advanceable;

    if-eqz v4, :cond_4a

    .line 1813
    iget-object v4, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/launcher3/Launcher$4$1;

    invoke-direct {v5, p0, v0}, Lcom/android/launcher3/Launcher$4$1;-><init>(Lcom/android/launcher3/Launcher$4;Landroid/view/View;)V

    .line 1817
    int-to-long v0, v1

    .line 1813
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1819
    :cond_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13
.end method
