.class Lcom/android/launcher3/DeleteDropTarget$1;
.super Landroid/os/AsyncTask;
.source "DeleteDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DeleteDropTarget;->removeWorkspaceOrFolderItem(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
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
.field private final synthetic val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private final synthetic val$widget:Lcom/android/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DeleteDropTarget$1;->val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iput-object p2, p0, Lcom/android/launcher3/DeleteDropTarget$1;->val$widget:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 111
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeleteDropTarget$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget$1;->val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget$1;->val$widget:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method
