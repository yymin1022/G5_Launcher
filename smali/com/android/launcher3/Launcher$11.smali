.class Lcom/android/launcher3/Launcher$11;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$appWidgetId:I

.field private final synthetic val$layout:Landroid/appwidget/AppWidgetHostView;

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$11;->val$appWidgetId:I

    iput-object p3, p0, Lcom/android/launcher3/Launcher$11;->val$layout:Landroid/appwidget/AppWidgetHostView;

    iput p4, p0, Lcom/android/launcher3/Launcher$11;->val$resultCode:I

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 954
    iget-object v0, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iget v1, p0, Lcom/android/launcher3/Launcher$11;->val$appWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/ItemInfo;->container:J

    .line 955
    iget-object v4, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mPendingAddInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-object v6, p0, Lcom/android/launcher3/Launcher$11;->val$layout:Landroid/appwidget/AppWidgetHostView;

    .line 954
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 956
    iget-object v1, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iget v0, p0, Lcom/android/launcher3/Launcher$11;->val$resultCode:I

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    .line 957
    :goto_1d
    const/16 v2, 0x12c

    .line 956
    invoke-virtual {v1, v0, v2, v7}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 958
    return-void

    .line 956
    :cond_23
    const/4 v0, 0x0

    goto :goto_1d
.end method
